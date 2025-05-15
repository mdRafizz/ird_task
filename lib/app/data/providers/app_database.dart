import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import '../models/books.dart';
import '../models/chapter.dart';
import '../models/hadith.dart';
import '../models/section.dart';

part 'app_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'hadith.db'));

    if (!await file.exists()) {
      final byteData = await rootBundle.load('assets/db/hadith.db');
      await file.writeAsBytes(byteData.buffer.asUint8List(), flush: true);
    }

    return NativeDatabase(file, logStatements: false);
  });
}

@DriftDatabase(tables: [Books, Chapter, Hadith, Section])
class AppDatabase extends _$AppDatabase {
  AppDatabase._internal() : super(_openConnection());
  static final AppDatabase _instance = AppDatabase._internal();
  factory AppDatabase() => _instance;

  @override
  int get schemaVersion => 1;

  Future<List<Book>> getAllBooks() => select(books).get();

  Future<List<ChapterData>> getChaptersByBookId(int bookId) =>
      (select(chapter)..where((tbl) => tbl.bookId.equals(bookId))).get();

  Future<List<(HadithData, SectionData)>> getHadithsByChapterId(
      int bookId,
      int chapterId,
      ) {
    final query = select(hadith).join([
      innerJoin(
        section,
        section.sectionId.equalsExp(hadith.sectionId) &
        section.bookId.equalsExp(hadith.bookId)! &
        section.chapterId.equalsExp(hadith.chapterId)!,
      ),
    ])
      ..where(hadith.chapterId.equals(chapterId) & hadith.bookId.equals(bookId));

    return query.map((row) => (
    row.readTable(hadith),
    row.readTable(section),
    )).get();
  }
}
