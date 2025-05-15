import 'package:drift/drift.dart';

class Section extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get bookId => integer().named('book_id')();

  TextColumn get bookName => text().named('book_name')();

  IntColumn get chapterId => integer().named('chapter_id')();

  IntColumn get sectionId => integer().named('section_id')();

  TextColumn get title => text()();

  TextColumn get preface => text().named('preface').nullable()();

  TextColumn get number => text().named('number').nullable()();

  IntColumn get sortOrder => integer().named('sort_order').nullable()();
}
