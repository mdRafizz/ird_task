import 'package:drift/drift.dart';

class Hadith extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get bookId => integer().named('book_id').nullable()();

  TextColumn get bookName => text().named('book_name').nullable()();

  IntColumn get chapterId => integer().named('chapter_id').nullable()();

  IntColumn get sectionId => integer().named('section_id').nullable()();

  TextColumn get hadithKey => text().named('hadith_key').nullable()();

  IntColumn get hadithId => integer().named('hadith_id').nullable()();

  TextColumn get narrator => text().named('narrator').nullable()();

  TextColumn get bn => text().named('bn').nullable()();

  TextColumn get ar => text().named('ar').nullable()();

  // TextColumn get arDiacless => text().named('ar_diacless').nullable()();

  TextColumn get note => text().named('note').nullable()();

  IntColumn get gradeId => integer().named('grade_id').nullable()();

  TextColumn get grade => text().named('grade').nullable()();

  TextColumn get gradeColor => text().named('grade_color').nullable()();
}
