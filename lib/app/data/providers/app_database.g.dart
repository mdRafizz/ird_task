// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $BooksTable extends Books with TableInfo<$BooksTable, Book> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BooksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _titleArMeta = const VerificationMeta(
    'titleAr',
  );
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
    'title_ar',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _numberOfHadisMeta = const VerificationMeta(
    'numberOfHadis',
  );
  @override
  late final GeneratedColumn<int> numberOfHadis = GeneratedColumn<int>(
    'number_of_hadis',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _abvrCodeMeta = const VerificationMeta(
    'abvrCode',
  );
  @override
  late final GeneratedColumn<String> abvrCode = GeneratedColumn<String>(
    'abvr_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _bookNameMeta = const VerificationMeta(
    'bookName',
  );
  @override
  late final GeneratedColumn<String> bookName = GeneratedColumn<String>(
    'book_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _bookDescrMeta = const VerificationMeta(
    'bookDescr',
  );
  @override
  late final GeneratedColumn<String> bookDescr = GeneratedColumn<String>(
    'book_descr',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _colorCodeMeta = const VerificationMeta(
    'colorCode',
  );
  @override
  late final GeneratedColumn<String> colorCode = GeneratedColumn<String>(
    'color_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    titleAr,
    numberOfHadis,
    abvrCode,
    bookName,
    bookDescr,
    colorCode,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'books';
  @override
  VerificationContext validateIntegrity(
    Insertable<Book> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    }
    if (data.containsKey('title_ar')) {
      context.handle(
        _titleArMeta,
        titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta),
      );
    }
    if (data.containsKey('number_of_hadis')) {
      context.handle(
        _numberOfHadisMeta,
        numberOfHadis.isAcceptableOrUnknown(
          data['number_of_hadis']!,
          _numberOfHadisMeta,
        ),
      );
    }
    if (data.containsKey('abvr_code')) {
      context.handle(
        _abvrCodeMeta,
        abvrCode.isAcceptableOrUnknown(data['abvr_code']!, _abvrCodeMeta),
      );
    }
    if (data.containsKey('book_name')) {
      context.handle(
        _bookNameMeta,
        bookName.isAcceptableOrUnknown(data['book_name']!, _bookNameMeta),
      );
    }
    if (data.containsKey('book_descr')) {
      context.handle(
        _bookDescrMeta,
        bookDescr.isAcceptableOrUnknown(data['book_descr']!, _bookDescrMeta),
      );
    }
    if (data.containsKey('color_code')) {
      context.handle(
        _colorCodeMeta,
        colorCode.isAcceptableOrUnknown(data['color_code']!, _colorCodeMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Book map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Book(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      ),
      titleAr: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title_ar'],
      ),
      numberOfHadis: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}number_of_hadis'],
      ),
      abvrCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}abvr_code'],
      ),
      bookName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}book_name'],
      ),
      bookDescr: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}book_descr'],
      ),
      colorCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}color_code'],
      ),
    );
  }

  @override
  $BooksTable createAlias(String alias) {
    return $BooksTable(attachedDatabase, alias);
  }
}

class Book extends DataClass implements Insertable<Book> {
  final int id;
  final String? title;
  final String? titleAr;
  final int? numberOfHadis;
  final String? abvrCode;
  final String? bookName;
  final String? bookDescr;
  final String? colorCode;
  const Book({
    required this.id,
    this.title,
    this.titleAr,
    this.numberOfHadis,
    this.abvrCode,
    this.bookName,
    this.bookDescr,
    this.colorCode,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || titleAr != null) {
      map['title_ar'] = Variable<String>(titleAr);
    }
    if (!nullToAbsent || numberOfHadis != null) {
      map['number_of_hadis'] = Variable<int>(numberOfHadis);
    }
    if (!nullToAbsent || abvrCode != null) {
      map['abvr_code'] = Variable<String>(abvrCode);
    }
    if (!nullToAbsent || bookName != null) {
      map['book_name'] = Variable<String>(bookName);
    }
    if (!nullToAbsent || bookDescr != null) {
      map['book_descr'] = Variable<String>(bookDescr);
    }
    if (!nullToAbsent || colorCode != null) {
      map['color_code'] = Variable<String>(colorCode);
    }
    return map;
  }

  BooksCompanion toCompanion(bool nullToAbsent) {
    return BooksCompanion(
      id: Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      titleAr:
          titleAr == null && nullToAbsent
              ? const Value.absent()
              : Value(titleAr),
      numberOfHadis:
          numberOfHadis == null && nullToAbsent
              ? const Value.absent()
              : Value(numberOfHadis),
      abvrCode:
          abvrCode == null && nullToAbsent
              ? const Value.absent()
              : Value(abvrCode),
      bookName:
          bookName == null && nullToAbsent
              ? const Value.absent()
              : Value(bookName),
      bookDescr:
          bookDescr == null && nullToAbsent
              ? const Value.absent()
              : Value(bookDescr),
      colorCode:
          colorCode == null && nullToAbsent
              ? const Value.absent()
              : Value(colorCode),
    );
  }

  factory Book.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Book(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String?>(json['title']),
      titleAr: serializer.fromJson<String?>(json['titleAr']),
      numberOfHadis: serializer.fromJson<int?>(json['numberOfHadis']),
      abvrCode: serializer.fromJson<String?>(json['abvrCode']),
      bookName: serializer.fromJson<String?>(json['bookName']),
      bookDescr: serializer.fromJson<String?>(json['bookDescr']),
      colorCode: serializer.fromJson<String?>(json['colorCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String?>(title),
      'titleAr': serializer.toJson<String?>(titleAr),
      'numberOfHadis': serializer.toJson<int?>(numberOfHadis),
      'abvrCode': serializer.toJson<String?>(abvrCode),
      'bookName': serializer.toJson<String?>(bookName),
      'bookDescr': serializer.toJson<String?>(bookDescr),
      'colorCode': serializer.toJson<String?>(colorCode),
    };
  }

  Book copyWith({
    int? id,
    Value<String?> title = const Value.absent(),
    Value<String?> titleAr = const Value.absent(),
    Value<int?> numberOfHadis = const Value.absent(),
    Value<String?> abvrCode = const Value.absent(),
    Value<String?> bookName = const Value.absent(),
    Value<String?> bookDescr = const Value.absent(),
    Value<String?> colorCode = const Value.absent(),
  }) => Book(
    id: id ?? this.id,
    title: title.present ? title.value : this.title,
    titleAr: titleAr.present ? titleAr.value : this.titleAr,
    numberOfHadis:
        numberOfHadis.present ? numberOfHadis.value : this.numberOfHadis,
    abvrCode: abvrCode.present ? abvrCode.value : this.abvrCode,
    bookName: bookName.present ? bookName.value : this.bookName,
    bookDescr: bookDescr.present ? bookDescr.value : this.bookDescr,
    colorCode: colorCode.present ? colorCode.value : this.colorCode,
  );
  Book copyWithCompanion(BooksCompanion data) {
    return Book(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      titleAr: data.titleAr.present ? data.titleAr.value : this.titleAr,
      numberOfHadis:
          data.numberOfHadis.present
              ? data.numberOfHadis.value
              : this.numberOfHadis,
      abvrCode: data.abvrCode.present ? data.abvrCode.value : this.abvrCode,
      bookName: data.bookName.present ? data.bookName.value : this.bookName,
      bookDescr: data.bookDescr.present ? data.bookDescr.value : this.bookDescr,
      colorCode: data.colorCode.present ? data.colorCode.value : this.colorCode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Book(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('titleAr: $titleAr, ')
          ..write('numberOfHadis: $numberOfHadis, ')
          ..write('abvrCode: $abvrCode, ')
          ..write('bookName: $bookName, ')
          ..write('bookDescr: $bookDescr, ')
          ..write('colorCode: $colorCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    titleAr,
    numberOfHadis,
    abvrCode,
    bookName,
    bookDescr,
    colorCode,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Book &&
          other.id == this.id &&
          other.title == this.title &&
          other.titleAr == this.titleAr &&
          other.numberOfHadis == this.numberOfHadis &&
          other.abvrCode == this.abvrCode &&
          other.bookName == this.bookName &&
          other.bookDescr == this.bookDescr &&
          other.colorCode == this.colorCode);
}

class BooksCompanion extends UpdateCompanion<Book> {
  final Value<int> id;
  final Value<String?> title;
  final Value<String?> titleAr;
  final Value<int?> numberOfHadis;
  final Value<String?> abvrCode;
  final Value<String?> bookName;
  final Value<String?> bookDescr;
  final Value<String?> colorCode;
  const BooksCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.numberOfHadis = const Value.absent(),
    this.abvrCode = const Value.absent(),
    this.bookName = const Value.absent(),
    this.bookDescr = const Value.absent(),
    this.colorCode = const Value.absent(),
  });
  BooksCompanion.insert({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.numberOfHadis = const Value.absent(),
    this.abvrCode = const Value.absent(),
    this.bookName = const Value.absent(),
    this.bookDescr = const Value.absent(),
    this.colorCode = const Value.absent(),
  });
  static Insertable<Book> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? titleAr,
    Expression<int>? numberOfHadis,
    Expression<String>? abvrCode,
    Expression<String>? bookName,
    Expression<String>? bookDescr,
    Expression<String>? colorCode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (titleAr != null) 'title_ar': titleAr,
      if (numberOfHadis != null) 'number_of_hadis': numberOfHadis,
      if (abvrCode != null) 'abvr_code': abvrCode,
      if (bookName != null) 'book_name': bookName,
      if (bookDescr != null) 'book_descr': bookDescr,
      if (colorCode != null) 'color_code': colorCode,
    });
  }

  BooksCompanion copyWith({
    Value<int>? id,
    Value<String?>? title,
    Value<String?>? titleAr,
    Value<int?>? numberOfHadis,
    Value<String?>? abvrCode,
    Value<String?>? bookName,
    Value<String?>? bookDescr,
    Value<String?>? colorCode,
  }) {
    return BooksCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      titleAr: titleAr ?? this.titleAr,
      numberOfHadis: numberOfHadis ?? this.numberOfHadis,
      abvrCode: abvrCode ?? this.abvrCode,
      bookName: bookName ?? this.bookName,
      bookDescr: bookDescr ?? this.bookDescr,
      colorCode: colorCode ?? this.colorCode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (numberOfHadis.present) {
      map['number_of_hadis'] = Variable<int>(numberOfHadis.value);
    }
    if (abvrCode.present) {
      map['abvr_code'] = Variable<String>(abvrCode.value);
    }
    if (bookName.present) {
      map['book_name'] = Variable<String>(bookName.value);
    }
    if (bookDescr.present) {
      map['book_descr'] = Variable<String>(bookDescr.value);
    }
    if (colorCode.present) {
      map['color_code'] = Variable<String>(colorCode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BooksCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('titleAr: $titleAr, ')
          ..write('numberOfHadis: $numberOfHadis, ')
          ..write('abvrCode: $abvrCode, ')
          ..write('bookName: $bookName, ')
          ..write('bookDescr: $bookDescr, ')
          ..write('colorCode: $colorCode')
          ..write(')'))
        .toString();
  }
}

class $ChapterTable extends Chapter with TableInfo<$ChapterTable, ChapterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChapterTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _chapterIdMeta = const VerificationMeta(
    'chapterId',
  );
  @override
  late final GeneratedColumn<int> chapterId = GeneratedColumn<int>(
    'chapter_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
    'book_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
    'number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _hadisRangeMeta = const VerificationMeta(
    'hadisRange',
  );
  @override
  late final GeneratedColumn<String> hadisRange = GeneratedColumn<String>(
    'hadis_range',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _bookNameMeta = const VerificationMeta(
    'bookName',
  );
  @override
  late final GeneratedColumn<String> bookName = GeneratedColumn<String>(
    'book_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    chapterId,
    bookId,
    title,
    number,
    hadisRange,
    bookName,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'chapter';
  @override
  VerificationContext validateIntegrity(
    Insertable<ChapterData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('chapter_id')) {
      context.handle(
        _chapterIdMeta,
        chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta),
      );
    } else if (isInserting) {
      context.missing(_chapterIdMeta);
    }
    if (data.containsKey('book_id')) {
      context.handle(
        _bookIdMeta,
        bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta),
      );
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('number')) {
      context.handle(
        _numberMeta,
        number.isAcceptableOrUnknown(data['number']!, _numberMeta),
      );
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('hadis_range')) {
      context.handle(
        _hadisRangeMeta,
        hadisRange.isAcceptableOrUnknown(data['hadis_range']!, _hadisRangeMeta),
      );
    }
    if (data.containsKey('book_name')) {
      context.handle(
        _bookNameMeta,
        bookName.isAcceptableOrUnknown(data['book_name']!, _bookNameMeta),
      );
    } else if (isInserting) {
      context.missing(_bookNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ChapterData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ChapterData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      chapterId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}chapter_id'],
          )!,
      bookId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}book_id'],
          )!,
      title:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}title'],
          )!,
      number:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}number'],
          )!,
      hadisRange: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}hadis_range'],
      ),
      bookName:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}book_name'],
          )!,
    );
  }

  @override
  $ChapterTable createAlias(String alias) {
    return $ChapterTable(attachedDatabase, alias);
  }
}

class ChapterData extends DataClass implements Insertable<ChapterData> {
  final int id;
  final int chapterId;
  final int bookId;
  final String title;
  final int number;
  final String? hadisRange;
  final String bookName;
  const ChapterData({
    required this.id,
    required this.chapterId,
    required this.bookId,
    required this.title,
    required this.number,
    this.hadisRange,
    required this.bookName,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['chapter_id'] = Variable<int>(chapterId);
    map['book_id'] = Variable<int>(bookId);
    map['title'] = Variable<String>(title);
    map['number'] = Variable<int>(number);
    if (!nullToAbsent || hadisRange != null) {
      map['hadis_range'] = Variable<String>(hadisRange);
    }
    map['book_name'] = Variable<String>(bookName);
    return map;
  }

  ChapterCompanion toCompanion(bool nullToAbsent) {
    return ChapterCompanion(
      id: Value(id),
      chapterId: Value(chapterId),
      bookId: Value(bookId),
      title: Value(title),
      number: Value(number),
      hadisRange:
          hadisRange == null && nullToAbsent
              ? const Value.absent()
              : Value(hadisRange),
      bookName: Value(bookName),
    );
  }

  factory ChapterData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChapterData(
      id: serializer.fromJson<int>(json['id']),
      chapterId: serializer.fromJson<int>(json['chapterId']),
      bookId: serializer.fromJson<int>(json['bookId']),
      title: serializer.fromJson<String>(json['title']),
      number: serializer.fromJson<int>(json['number']),
      hadisRange: serializer.fromJson<String?>(json['hadisRange']),
      bookName: serializer.fromJson<String>(json['bookName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'chapterId': serializer.toJson<int>(chapterId),
      'bookId': serializer.toJson<int>(bookId),
      'title': serializer.toJson<String>(title),
      'number': serializer.toJson<int>(number),
      'hadisRange': serializer.toJson<String?>(hadisRange),
      'bookName': serializer.toJson<String>(bookName),
    };
  }

  ChapterData copyWith({
    int? id,
    int? chapterId,
    int? bookId,
    String? title,
    int? number,
    Value<String?> hadisRange = const Value.absent(),
    String? bookName,
  }) => ChapterData(
    id: id ?? this.id,
    chapterId: chapterId ?? this.chapterId,
    bookId: bookId ?? this.bookId,
    title: title ?? this.title,
    number: number ?? this.number,
    hadisRange: hadisRange.present ? hadisRange.value : this.hadisRange,
    bookName: bookName ?? this.bookName,
  );
  ChapterData copyWithCompanion(ChapterCompanion data) {
    return ChapterData(
      id: data.id.present ? data.id.value : this.id,
      chapterId: data.chapterId.present ? data.chapterId.value : this.chapterId,
      bookId: data.bookId.present ? data.bookId.value : this.bookId,
      title: data.title.present ? data.title.value : this.title,
      number: data.number.present ? data.number.value : this.number,
      hadisRange:
          data.hadisRange.present ? data.hadisRange.value : this.hadisRange,
      bookName: data.bookName.present ? data.bookName.value : this.bookName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ChapterData(')
          ..write('id: $id, ')
          ..write('chapterId: $chapterId, ')
          ..write('bookId: $bookId, ')
          ..write('title: $title, ')
          ..write('number: $number, ')
          ..write('hadisRange: $hadisRange, ')
          ..write('bookName: $bookName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, chapterId, bookId, title, number, hadisRange, bookName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChapterData &&
          other.id == this.id &&
          other.chapterId == this.chapterId &&
          other.bookId == this.bookId &&
          other.title == this.title &&
          other.number == this.number &&
          other.hadisRange == this.hadisRange &&
          other.bookName == this.bookName);
}

class ChapterCompanion extends UpdateCompanion<ChapterData> {
  final Value<int> id;
  final Value<int> chapterId;
  final Value<int> bookId;
  final Value<String> title;
  final Value<int> number;
  final Value<String?> hadisRange;
  final Value<String> bookName;
  const ChapterCompanion({
    this.id = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.bookId = const Value.absent(),
    this.title = const Value.absent(),
    this.number = const Value.absent(),
    this.hadisRange = const Value.absent(),
    this.bookName = const Value.absent(),
  });
  ChapterCompanion.insert({
    this.id = const Value.absent(),
    required int chapterId,
    required int bookId,
    required String title,
    required int number,
    this.hadisRange = const Value.absent(),
    required String bookName,
  }) : chapterId = Value(chapterId),
       bookId = Value(bookId),
       title = Value(title),
       number = Value(number),
       bookName = Value(bookName);
  static Insertable<ChapterData> custom({
    Expression<int>? id,
    Expression<int>? chapterId,
    Expression<int>? bookId,
    Expression<String>? title,
    Expression<int>? number,
    Expression<String>? hadisRange,
    Expression<String>? bookName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (chapterId != null) 'chapter_id': chapterId,
      if (bookId != null) 'book_id': bookId,
      if (title != null) 'title': title,
      if (number != null) 'number': number,
      if (hadisRange != null) 'hadis_range': hadisRange,
      if (bookName != null) 'book_name': bookName,
    });
  }

  ChapterCompanion copyWith({
    Value<int>? id,
    Value<int>? chapterId,
    Value<int>? bookId,
    Value<String>? title,
    Value<int>? number,
    Value<String?>? hadisRange,
    Value<String>? bookName,
  }) {
    return ChapterCompanion(
      id: id ?? this.id,
      chapterId: chapterId ?? this.chapterId,
      bookId: bookId ?? this.bookId,
      title: title ?? this.title,
      number: number ?? this.number,
      hadisRange: hadisRange ?? this.hadisRange,
      bookName: bookName ?? this.bookName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = Variable<int>(chapterId.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (hadisRange.present) {
      map['hadis_range'] = Variable<String>(hadisRange.value);
    }
    if (bookName.present) {
      map['book_name'] = Variable<String>(bookName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChapterCompanion(')
          ..write('id: $id, ')
          ..write('chapterId: $chapterId, ')
          ..write('bookId: $bookId, ')
          ..write('title: $title, ')
          ..write('number: $number, ')
          ..write('hadisRange: $hadisRange, ')
          ..write('bookName: $bookName')
          ..write(')'))
        .toString();
  }
}

class $HadithTable extends Hadith with TableInfo<$HadithTable, HadithData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HadithTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
    'book_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _bookNameMeta = const VerificationMeta(
    'bookName',
  );
  @override
  late final GeneratedColumn<String> bookName = GeneratedColumn<String>(
    'book_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _chapterIdMeta = const VerificationMeta(
    'chapterId',
  );
  @override
  late final GeneratedColumn<int> chapterId = GeneratedColumn<int>(
    'chapter_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sectionIdMeta = const VerificationMeta(
    'sectionId',
  );
  @override
  late final GeneratedColumn<int> sectionId = GeneratedColumn<int>(
    'section_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _hadithKeyMeta = const VerificationMeta(
    'hadithKey',
  );
  @override
  late final GeneratedColumn<String> hadithKey = GeneratedColumn<String>(
    'hadith_key',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _hadithIdMeta = const VerificationMeta(
    'hadithId',
  );
  @override
  late final GeneratedColumn<int> hadithId = GeneratedColumn<int>(
    'hadith_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _narratorMeta = const VerificationMeta(
    'narrator',
  );
  @override
  late final GeneratedColumn<String> narrator = GeneratedColumn<String>(
    'narrator',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _bnMeta = const VerificationMeta('bn');
  @override
  late final GeneratedColumn<String> bn = GeneratedColumn<String>(
    'bn',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _arMeta = const VerificationMeta('ar');
  @override
  late final GeneratedColumn<String> ar = GeneratedColumn<String>(
    'ar',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _gradeIdMeta = const VerificationMeta(
    'gradeId',
  );
  @override
  late final GeneratedColumn<int> gradeId = GeneratedColumn<int>(
    'grade_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _gradeMeta = const VerificationMeta('grade');
  @override
  late final GeneratedColumn<String> grade = GeneratedColumn<String>(
    'grade',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _gradeColorMeta = const VerificationMeta(
    'gradeColor',
  );
  @override
  late final GeneratedColumn<String> gradeColor = GeneratedColumn<String>(
    'grade_color',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    bookId,
    bookName,
    chapterId,
    sectionId,
    hadithKey,
    hadithId,
    narrator,
    bn,
    ar,
    note,
    gradeId,
    grade,
    gradeColor,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hadith';
  @override
  VerificationContext validateIntegrity(
    Insertable<HadithData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(
        _bookIdMeta,
        bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta),
      );
    }
    if (data.containsKey('book_name')) {
      context.handle(
        _bookNameMeta,
        bookName.isAcceptableOrUnknown(data['book_name']!, _bookNameMeta),
      );
    }
    if (data.containsKey('chapter_id')) {
      context.handle(
        _chapterIdMeta,
        chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta),
      );
    }
    if (data.containsKey('section_id')) {
      context.handle(
        _sectionIdMeta,
        sectionId.isAcceptableOrUnknown(data['section_id']!, _sectionIdMeta),
      );
    }
    if (data.containsKey('hadith_key')) {
      context.handle(
        _hadithKeyMeta,
        hadithKey.isAcceptableOrUnknown(data['hadith_key']!, _hadithKeyMeta),
      );
    }
    if (data.containsKey('hadith_id')) {
      context.handle(
        _hadithIdMeta,
        hadithId.isAcceptableOrUnknown(data['hadith_id']!, _hadithIdMeta),
      );
    }
    if (data.containsKey('narrator')) {
      context.handle(
        _narratorMeta,
        narrator.isAcceptableOrUnknown(data['narrator']!, _narratorMeta),
      );
    }
    if (data.containsKey('bn')) {
      context.handle(_bnMeta, bn.isAcceptableOrUnknown(data['bn']!, _bnMeta));
    }
    if (data.containsKey('ar')) {
      context.handle(_arMeta, ar.isAcceptableOrUnknown(data['ar']!, _arMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    if (data.containsKey('grade_id')) {
      context.handle(
        _gradeIdMeta,
        gradeId.isAcceptableOrUnknown(data['grade_id']!, _gradeIdMeta),
      );
    }
    if (data.containsKey('grade')) {
      context.handle(
        _gradeMeta,
        grade.isAcceptableOrUnknown(data['grade']!, _gradeMeta),
      );
    }
    if (data.containsKey('grade_color')) {
      context.handle(
        _gradeColorMeta,
        gradeColor.isAcceptableOrUnknown(data['grade_color']!, _gradeColorMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HadithData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HadithData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      bookId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}book_id'],
      ),
      bookName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}book_name'],
      ),
      chapterId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}chapter_id'],
      ),
      sectionId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}section_id'],
      ),
      hadithKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}hadith_key'],
      ),
      hadithId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}hadith_id'],
      ),
      narrator: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}narrator'],
      ),
      bn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bn'],
      ),
      ar: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ar'],
      ),
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
      gradeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}grade_id'],
      ),
      grade: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}grade'],
      ),
      gradeColor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}grade_color'],
      ),
    );
  }

  @override
  $HadithTable createAlias(String alias) {
    return $HadithTable(attachedDatabase, alias);
  }
}

class HadithData extends DataClass implements Insertable<HadithData> {
  final int id;
  final int? bookId;
  final String? bookName;
  final int? chapterId;
  final int? sectionId;
  final String? hadithKey;
  final int? hadithId;
  final String? narrator;
  final String? bn;
  final String? ar;
  final String? note;
  final int? gradeId;
  final String? grade;
  final String? gradeColor;
  const HadithData({
    required this.id,
    this.bookId,
    this.bookName,
    this.chapterId,
    this.sectionId,
    this.hadithKey,
    this.hadithId,
    this.narrator,
    this.bn,
    this.ar,
    this.note,
    this.gradeId,
    this.grade,
    this.gradeColor,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<int>(bookId);
    }
    if (!nullToAbsent || bookName != null) {
      map['book_name'] = Variable<String>(bookName);
    }
    if (!nullToAbsent || chapterId != null) {
      map['chapter_id'] = Variable<int>(chapterId);
    }
    if (!nullToAbsent || sectionId != null) {
      map['section_id'] = Variable<int>(sectionId);
    }
    if (!nullToAbsent || hadithKey != null) {
      map['hadith_key'] = Variable<String>(hadithKey);
    }
    if (!nullToAbsent || hadithId != null) {
      map['hadith_id'] = Variable<int>(hadithId);
    }
    if (!nullToAbsent || narrator != null) {
      map['narrator'] = Variable<String>(narrator);
    }
    if (!nullToAbsent || bn != null) {
      map['bn'] = Variable<String>(bn);
    }
    if (!nullToAbsent || ar != null) {
      map['ar'] = Variable<String>(ar);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    if (!nullToAbsent || gradeId != null) {
      map['grade_id'] = Variable<int>(gradeId);
    }
    if (!nullToAbsent || grade != null) {
      map['grade'] = Variable<String>(grade);
    }
    if (!nullToAbsent || gradeColor != null) {
      map['grade_color'] = Variable<String>(gradeColor);
    }
    return map;
  }

  HadithCompanion toCompanion(bool nullToAbsent) {
    return HadithCompanion(
      id: Value(id),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      bookName:
          bookName == null && nullToAbsent
              ? const Value.absent()
              : Value(bookName),
      chapterId:
          chapterId == null && nullToAbsent
              ? const Value.absent()
              : Value(chapterId),
      sectionId:
          sectionId == null && nullToAbsent
              ? const Value.absent()
              : Value(sectionId),
      hadithKey:
          hadithKey == null && nullToAbsent
              ? const Value.absent()
              : Value(hadithKey),
      hadithId:
          hadithId == null && nullToAbsent
              ? const Value.absent()
              : Value(hadithId),
      narrator:
          narrator == null && nullToAbsent
              ? const Value.absent()
              : Value(narrator),
      bn: bn == null && nullToAbsent ? const Value.absent() : Value(bn),
      ar: ar == null && nullToAbsent ? const Value.absent() : Value(ar),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      gradeId:
          gradeId == null && nullToAbsent
              ? const Value.absent()
              : Value(gradeId),
      grade:
          grade == null && nullToAbsent ? const Value.absent() : Value(grade),
      gradeColor:
          gradeColor == null && nullToAbsent
              ? const Value.absent()
              : Value(gradeColor),
    );
  }

  factory HadithData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HadithData(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int?>(json['bookId']),
      bookName: serializer.fromJson<String?>(json['bookName']),
      chapterId: serializer.fromJson<int?>(json['chapterId']),
      sectionId: serializer.fromJson<int?>(json['sectionId']),
      hadithKey: serializer.fromJson<String?>(json['hadithKey']),
      hadithId: serializer.fromJson<int?>(json['hadithId']),
      narrator: serializer.fromJson<String?>(json['narrator']),
      bn: serializer.fromJson<String?>(json['bn']),
      ar: serializer.fromJson<String?>(json['ar']),
      note: serializer.fromJson<String?>(json['note']),
      gradeId: serializer.fromJson<int?>(json['gradeId']),
      grade: serializer.fromJson<String?>(json['grade']),
      gradeColor: serializer.fromJson<String?>(json['gradeColor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int?>(bookId),
      'bookName': serializer.toJson<String?>(bookName),
      'chapterId': serializer.toJson<int?>(chapterId),
      'sectionId': serializer.toJson<int?>(sectionId),
      'hadithKey': serializer.toJson<String?>(hadithKey),
      'hadithId': serializer.toJson<int?>(hadithId),
      'narrator': serializer.toJson<String?>(narrator),
      'bn': serializer.toJson<String?>(bn),
      'ar': serializer.toJson<String?>(ar),
      'note': serializer.toJson<String?>(note),
      'gradeId': serializer.toJson<int?>(gradeId),
      'grade': serializer.toJson<String?>(grade),
      'gradeColor': serializer.toJson<String?>(gradeColor),
    };
  }

  HadithData copyWith({
    int? id,
    Value<int?> bookId = const Value.absent(),
    Value<String?> bookName = const Value.absent(),
    Value<int?> chapterId = const Value.absent(),
    Value<int?> sectionId = const Value.absent(),
    Value<String?> hadithKey = const Value.absent(),
    Value<int?> hadithId = const Value.absent(),
    Value<String?> narrator = const Value.absent(),
    Value<String?> bn = const Value.absent(),
    Value<String?> ar = const Value.absent(),
    Value<String?> note = const Value.absent(),
    Value<int?> gradeId = const Value.absent(),
    Value<String?> grade = const Value.absent(),
    Value<String?> gradeColor = const Value.absent(),
  }) => HadithData(
    id: id ?? this.id,
    bookId: bookId.present ? bookId.value : this.bookId,
    bookName: bookName.present ? bookName.value : this.bookName,
    chapterId: chapterId.present ? chapterId.value : this.chapterId,
    sectionId: sectionId.present ? sectionId.value : this.sectionId,
    hadithKey: hadithKey.present ? hadithKey.value : this.hadithKey,
    hadithId: hadithId.present ? hadithId.value : this.hadithId,
    narrator: narrator.present ? narrator.value : this.narrator,
    bn: bn.present ? bn.value : this.bn,
    ar: ar.present ? ar.value : this.ar,
    note: note.present ? note.value : this.note,
    gradeId: gradeId.present ? gradeId.value : this.gradeId,
    grade: grade.present ? grade.value : this.grade,
    gradeColor: gradeColor.present ? gradeColor.value : this.gradeColor,
  );
  HadithData copyWithCompanion(HadithCompanion data) {
    return HadithData(
      id: data.id.present ? data.id.value : this.id,
      bookId: data.bookId.present ? data.bookId.value : this.bookId,
      bookName: data.bookName.present ? data.bookName.value : this.bookName,
      chapterId: data.chapterId.present ? data.chapterId.value : this.chapterId,
      sectionId: data.sectionId.present ? data.sectionId.value : this.sectionId,
      hadithKey: data.hadithKey.present ? data.hadithKey.value : this.hadithKey,
      hadithId: data.hadithId.present ? data.hadithId.value : this.hadithId,
      narrator: data.narrator.present ? data.narrator.value : this.narrator,
      bn: data.bn.present ? data.bn.value : this.bn,
      ar: data.ar.present ? data.ar.value : this.ar,
      note: data.note.present ? data.note.value : this.note,
      gradeId: data.gradeId.present ? data.gradeId.value : this.gradeId,
      grade: data.grade.present ? data.grade.value : this.grade,
      gradeColor:
          data.gradeColor.present ? data.gradeColor.value : this.gradeColor,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HadithData(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('chapterId: $chapterId, ')
          ..write('sectionId: $sectionId, ')
          ..write('hadithKey: $hadithKey, ')
          ..write('hadithId: $hadithId, ')
          ..write('narrator: $narrator, ')
          ..write('bn: $bn, ')
          ..write('ar: $ar, ')
          ..write('note: $note, ')
          ..write('gradeId: $gradeId, ')
          ..write('grade: $grade, ')
          ..write('gradeColor: $gradeColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    bookId,
    bookName,
    chapterId,
    sectionId,
    hadithKey,
    hadithId,
    narrator,
    bn,
    ar,
    note,
    gradeId,
    grade,
    gradeColor,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HadithData &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.bookName == this.bookName &&
          other.chapterId == this.chapterId &&
          other.sectionId == this.sectionId &&
          other.hadithKey == this.hadithKey &&
          other.hadithId == this.hadithId &&
          other.narrator == this.narrator &&
          other.bn == this.bn &&
          other.ar == this.ar &&
          other.note == this.note &&
          other.gradeId == this.gradeId &&
          other.grade == this.grade &&
          other.gradeColor == this.gradeColor);
}

class HadithCompanion extends UpdateCompanion<HadithData> {
  final Value<int> id;
  final Value<int?> bookId;
  final Value<String?> bookName;
  final Value<int?> chapterId;
  final Value<int?> sectionId;
  final Value<String?> hadithKey;
  final Value<int?> hadithId;
  final Value<String?> narrator;
  final Value<String?> bn;
  final Value<String?> ar;
  final Value<String?> note;
  final Value<int?> gradeId;
  final Value<String?> grade;
  final Value<String?> gradeColor;
  const HadithCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.bookName = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.hadithKey = const Value.absent(),
    this.hadithId = const Value.absent(),
    this.narrator = const Value.absent(),
    this.bn = const Value.absent(),
    this.ar = const Value.absent(),
    this.note = const Value.absent(),
    this.gradeId = const Value.absent(),
    this.grade = const Value.absent(),
    this.gradeColor = const Value.absent(),
  });
  HadithCompanion.insert({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.bookName = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.hadithKey = const Value.absent(),
    this.hadithId = const Value.absent(),
    this.narrator = const Value.absent(),
    this.bn = const Value.absent(),
    this.ar = const Value.absent(),
    this.note = const Value.absent(),
    this.gradeId = const Value.absent(),
    this.grade = const Value.absent(),
    this.gradeColor = const Value.absent(),
  });
  static Insertable<HadithData> custom({
    Expression<int>? id,
    Expression<int>? bookId,
    Expression<String>? bookName,
    Expression<int>? chapterId,
    Expression<int>? sectionId,
    Expression<String>? hadithKey,
    Expression<int>? hadithId,
    Expression<String>? narrator,
    Expression<String>? bn,
    Expression<String>? ar,
    Expression<String>? note,
    Expression<int>? gradeId,
    Expression<String>? grade,
    Expression<String>? gradeColor,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (bookName != null) 'book_name': bookName,
      if (chapterId != null) 'chapter_id': chapterId,
      if (sectionId != null) 'section_id': sectionId,
      if (hadithKey != null) 'hadith_key': hadithKey,
      if (hadithId != null) 'hadith_id': hadithId,
      if (narrator != null) 'narrator': narrator,
      if (bn != null) 'bn': bn,
      if (ar != null) 'ar': ar,
      if (note != null) 'note': note,
      if (gradeId != null) 'grade_id': gradeId,
      if (grade != null) 'grade': grade,
      if (gradeColor != null) 'grade_color': gradeColor,
    });
  }

  HadithCompanion copyWith({
    Value<int>? id,
    Value<int?>? bookId,
    Value<String?>? bookName,
    Value<int?>? chapterId,
    Value<int?>? sectionId,
    Value<String?>? hadithKey,
    Value<int?>? hadithId,
    Value<String?>? narrator,
    Value<String?>? bn,
    Value<String?>? ar,
    Value<String?>? note,
    Value<int?>? gradeId,
    Value<String?>? grade,
    Value<String?>? gradeColor,
  }) {
    return HadithCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      bookName: bookName ?? this.bookName,
      chapterId: chapterId ?? this.chapterId,
      sectionId: sectionId ?? this.sectionId,
      hadithKey: hadithKey ?? this.hadithKey,
      hadithId: hadithId ?? this.hadithId,
      narrator: narrator ?? this.narrator,
      bn: bn ?? this.bn,
      ar: ar ?? this.ar,
      note: note ?? this.note,
      gradeId: gradeId ?? this.gradeId,
      grade: grade ?? this.grade,
      gradeColor: gradeColor ?? this.gradeColor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (bookName.present) {
      map['book_name'] = Variable<String>(bookName.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = Variable<int>(chapterId.value);
    }
    if (sectionId.present) {
      map['section_id'] = Variable<int>(sectionId.value);
    }
    if (hadithKey.present) {
      map['hadith_key'] = Variable<String>(hadithKey.value);
    }
    if (hadithId.present) {
      map['hadith_id'] = Variable<int>(hadithId.value);
    }
    if (narrator.present) {
      map['narrator'] = Variable<String>(narrator.value);
    }
    if (bn.present) {
      map['bn'] = Variable<String>(bn.value);
    }
    if (ar.present) {
      map['ar'] = Variable<String>(ar.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (gradeId.present) {
      map['grade_id'] = Variable<int>(gradeId.value);
    }
    if (grade.present) {
      map['grade'] = Variable<String>(grade.value);
    }
    if (gradeColor.present) {
      map['grade_color'] = Variable<String>(gradeColor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HadithCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('chapterId: $chapterId, ')
          ..write('sectionId: $sectionId, ')
          ..write('hadithKey: $hadithKey, ')
          ..write('hadithId: $hadithId, ')
          ..write('narrator: $narrator, ')
          ..write('bn: $bn, ')
          ..write('ar: $ar, ')
          ..write('note: $note, ')
          ..write('gradeId: $gradeId, ')
          ..write('grade: $grade, ')
          ..write('gradeColor: $gradeColor')
          ..write(')'))
        .toString();
  }
}

class $SectionTable extends Section with TableInfo<$SectionTable, SectionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SectionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
    'book_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bookNameMeta = const VerificationMeta(
    'bookName',
  );
  @override
  late final GeneratedColumn<String> bookName = GeneratedColumn<String>(
    'book_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _chapterIdMeta = const VerificationMeta(
    'chapterId',
  );
  @override
  late final GeneratedColumn<int> chapterId = GeneratedColumn<int>(
    'chapter_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sectionIdMeta = const VerificationMeta(
    'sectionId',
  );
  @override
  late final GeneratedColumn<int> sectionId = GeneratedColumn<int>(
    'section_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _prefaceMeta = const VerificationMeta(
    'preface',
  );
  @override
  late final GeneratedColumn<String> preface = GeneratedColumn<String>(
    'preface',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<String> number = GeneratedColumn<String>(
    'number',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    bookId,
    bookName,
    chapterId,
    sectionId,
    title,
    preface,
    number,
    sortOrder,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'section';
  @override
  VerificationContext validateIntegrity(
    Insertable<SectionData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(
        _bookIdMeta,
        bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta),
      );
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('book_name')) {
      context.handle(
        _bookNameMeta,
        bookName.isAcceptableOrUnknown(data['book_name']!, _bookNameMeta),
      );
    } else if (isInserting) {
      context.missing(_bookNameMeta);
    }
    if (data.containsKey('chapter_id')) {
      context.handle(
        _chapterIdMeta,
        chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta),
      );
    } else if (isInserting) {
      context.missing(_chapterIdMeta);
    }
    if (data.containsKey('section_id')) {
      context.handle(
        _sectionIdMeta,
        sectionId.isAcceptableOrUnknown(data['section_id']!, _sectionIdMeta),
      );
    } else if (isInserting) {
      context.missing(_sectionIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('preface')) {
      context.handle(
        _prefaceMeta,
        preface.isAcceptableOrUnknown(data['preface']!, _prefaceMeta),
      );
    }
    if (data.containsKey('number')) {
      context.handle(
        _numberMeta,
        number.isAcceptableOrUnknown(data['number']!, _numberMeta),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SectionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SectionData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      bookId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}book_id'],
          )!,
      bookName:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}book_name'],
          )!,
      chapterId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}chapter_id'],
          )!,
      sectionId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}section_id'],
          )!,
      title:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}title'],
          )!,
      preface: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}preface'],
      ),
      number: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}number'],
      ),
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      ),
    );
  }

  @override
  $SectionTable createAlias(String alias) {
    return $SectionTable(attachedDatabase, alias);
  }
}

class SectionData extends DataClass implements Insertable<SectionData> {
  final int id;
  final int bookId;
  final String bookName;
  final int chapterId;
  final int sectionId;
  final String title;
  final String? preface;
  final String? number;
  final int? sortOrder;
  const SectionData({
    required this.id,
    required this.bookId,
    required this.bookName,
    required this.chapterId,
    required this.sectionId,
    required this.title,
    this.preface,
    this.number,
    this.sortOrder,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['book_id'] = Variable<int>(bookId);
    map['book_name'] = Variable<String>(bookName);
    map['chapter_id'] = Variable<int>(chapterId);
    map['section_id'] = Variable<int>(sectionId);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || preface != null) {
      map['preface'] = Variable<String>(preface);
    }
    if (!nullToAbsent || number != null) {
      map['number'] = Variable<String>(number);
    }
    if (!nullToAbsent || sortOrder != null) {
      map['sort_order'] = Variable<int>(sortOrder);
    }
    return map;
  }

  SectionCompanion toCompanion(bool nullToAbsent) {
    return SectionCompanion(
      id: Value(id),
      bookId: Value(bookId),
      bookName: Value(bookName),
      chapterId: Value(chapterId),
      sectionId: Value(sectionId),
      title: Value(title),
      preface:
          preface == null && nullToAbsent
              ? const Value.absent()
              : Value(preface),
      number:
          number == null && nullToAbsent ? const Value.absent() : Value(number),
      sortOrder:
          sortOrder == null && nullToAbsent
              ? const Value.absent()
              : Value(sortOrder),
    );
  }

  factory SectionData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SectionData(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      bookName: serializer.fromJson<String>(json['bookName']),
      chapterId: serializer.fromJson<int>(json['chapterId']),
      sectionId: serializer.fromJson<int>(json['sectionId']),
      title: serializer.fromJson<String>(json['title']),
      preface: serializer.fromJson<String?>(json['preface']),
      number: serializer.fromJson<String?>(json['number']),
      sortOrder: serializer.fromJson<int?>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'bookName': serializer.toJson<String>(bookName),
      'chapterId': serializer.toJson<int>(chapterId),
      'sectionId': serializer.toJson<int>(sectionId),
      'title': serializer.toJson<String>(title),
      'preface': serializer.toJson<String?>(preface),
      'number': serializer.toJson<String?>(number),
      'sortOrder': serializer.toJson<int?>(sortOrder),
    };
  }

  SectionData copyWith({
    int? id,
    int? bookId,
    String? bookName,
    int? chapterId,
    int? sectionId,
    String? title,
    Value<String?> preface = const Value.absent(),
    Value<String?> number = const Value.absent(),
    Value<int?> sortOrder = const Value.absent(),
  }) => SectionData(
    id: id ?? this.id,
    bookId: bookId ?? this.bookId,
    bookName: bookName ?? this.bookName,
    chapterId: chapterId ?? this.chapterId,
    sectionId: sectionId ?? this.sectionId,
    title: title ?? this.title,
    preface: preface.present ? preface.value : this.preface,
    number: number.present ? number.value : this.number,
    sortOrder: sortOrder.present ? sortOrder.value : this.sortOrder,
  );
  SectionData copyWithCompanion(SectionCompanion data) {
    return SectionData(
      id: data.id.present ? data.id.value : this.id,
      bookId: data.bookId.present ? data.bookId.value : this.bookId,
      bookName: data.bookName.present ? data.bookName.value : this.bookName,
      chapterId: data.chapterId.present ? data.chapterId.value : this.chapterId,
      sectionId: data.sectionId.present ? data.sectionId.value : this.sectionId,
      title: data.title.present ? data.title.value : this.title,
      preface: data.preface.present ? data.preface.value : this.preface,
      number: data.number.present ? data.number.value : this.number,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SectionData(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('chapterId: $chapterId, ')
          ..write('sectionId: $sectionId, ')
          ..write('title: $title, ')
          ..write('preface: $preface, ')
          ..write('number: $number, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    bookId,
    bookName,
    chapterId,
    sectionId,
    title,
    preface,
    number,
    sortOrder,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SectionData &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.bookName == this.bookName &&
          other.chapterId == this.chapterId &&
          other.sectionId == this.sectionId &&
          other.title == this.title &&
          other.preface == this.preface &&
          other.number == this.number &&
          other.sortOrder == this.sortOrder);
}

class SectionCompanion extends UpdateCompanion<SectionData> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<String> bookName;
  final Value<int> chapterId;
  final Value<int> sectionId;
  final Value<String> title;
  final Value<String?> preface;
  final Value<String?> number;
  final Value<int?> sortOrder;
  const SectionCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.bookName = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.title = const Value.absent(),
    this.preface = const Value.absent(),
    this.number = const Value.absent(),
    this.sortOrder = const Value.absent(),
  });
  SectionCompanion.insert({
    this.id = const Value.absent(),
    required int bookId,
    required String bookName,
    required int chapterId,
    required int sectionId,
    required String title,
    this.preface = const Value.absent(),
    this.number = const Value.absent(),
    this.sortOrder = const Value.absent(),
  }) : bookId = Value(bookId),
       bookName = Value(bookName),
       chapterId = Value(chapterId),
       sectionId = Value(sectionId),
       title = Value(title);
  static Insertable<SectionData> custom({
    Expression<int>? id,
    Expression<int>? bookId,
    Expression<String>? bookName,
    Expression<int>? chapterId,
    Expression<int>? sectionId,
    Expression<String>? title,
    Expression<String>? preface,
    Expression<String>? number,
    Expression<int>? sortOrder,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (bookName != null) 'book_name': bookName,
      if (chapterId != null) 'chapter_id': chapterId,
      if (sectionId != null) 'section_id': sectionId,
      if (title != null) 'title': title,
      if (preface != null) 'preface': preface,
      if (number != null) 'number': number,
      if (sortOrder != null) 'sort_order': sortOrder,
    });
  }

  SectionCompanion copyWith({
    Value<int>? id,
    Value<int>? bookId,
    Value<String>? bookName,
    Value<int>? chapterId,
    Value<int>? sectionId,
    Value<String>? title,
    Value<String?>? preface,
    Value<String?>? number,
    Value<int?>? sortOrder,
  }) {
    return SectionCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      bookName: bookName ?? this.bookName,
      chapterId: chapterId ?? this.chapterId,
      sectionId: sectionId ?? this.sectionId,
      title: title ?? this.title,
      preface: preface ?? this.preface,
      number: number ?? this.number,
      sortOrder: sortOrder ?? this.sortOrder,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (bookName.present) {
      map['book_name'] = Variable<String>(bookName.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = Variable<int>(chapterId.value);
    }
    if (sectionId.present) {
      map['section_id'] = Variable<int>(sectionId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (preface.present) {
      map['preface'] = Variable<String>(preface.value);
    }
    if (number.present) {
      map['number'] = Variable<String>(number.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SectionCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('chapterId: $chapterId, ')
          ..write('sectionId: $sectionId, ')
          ..write('title: $title, ')
          ..write('preface: $preface, ')
          ..write('number: $number, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BooksTable books = $BooksTable(this);
  late final $ChapterTable chapter = $ChapterTable(this);
  late final $HadithTable hadith = $HadithTable(this);
  late final $SectionTable section = $SectionTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    books,
    chapter,
    hadith,
    section,
  ];
}

typedef $$BooksTableCreateCompanionBuilder =
    BooksCompanion Function({
      Value<int> id,
      Value<String?> title,
      Value<String?> titleAr,
      Value<int?> numberOfHadis,
      Value<String?> abvrCode,
      Value<String?> bookName,
      Value<String?> bookDescr,
      Value<String?> colorCode,
    });
typedef $$BooksTableUpdateCompanionBuilder =
    BooksCompanion Function({
      Value<int> id,
      Value<String?> title,
      Value<String?> titleAr,
      Value<int?> numberOfHadis,
      Value<String?> abvrCode,
      Value<String?> bookName,
      Value<String?> bookDescr,
      Value<String?> colorCode,
    });

class $$BooksTableFilterComposer extends Composer<_$AppDatabase, $BooksTable> {
  $$BooksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get titleAr => $composableBuilder(
    column: $table.titleAr,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get numberOfHadis => $composableBuilder(
    column: $table.numberOfHadis,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get abvrCode => $composableBuilder(
    column: $table.abvrCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bookName => $composableBuilder(
    column: $table.bookName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bookDescr => $composableBuilder(
    column: $table.bookDescr,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get colorCode => $composableBuilder(
    column: $table.colorCode,
    builder: (column) => ColumnFilters(column),
  );
}

class $$BooksTableOrderingComposer
    extends Composer<_$AppDatabase, $BooksTable> {
  $$BooksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get titleAr => $composableBuilder(
    column: $table.titleAr,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get numberOfHadis => $composableBuilder(
    column: $table.numberOfHadis,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get abvrCode => $composableBuilder(
    column: $table.abvrCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bookName => $composableBuilder(
    column: $table.bookName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bookDescr => $composableBuilder(
    column: $table.bookDescr,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get colorCode => $composableBuilder(
    column: $table.colorCode,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BooksTableAnnotationComposer
    extends Composer<_$AppDatabase, $BooksTable> {
  $$BooksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get titleAr =>
      $composableBuilder(column: $table.titleAr, builder: (column) => column);

  GeneratedColumn<int> get numberOfHadis => $composableBuilder(
    column: $table.numberOfHadis,
    builder: (column) => column,
  );

  GeneratedColumn<String> get abvrCode =>
      $composableBuilder(column: $table.abvrCode, builder: (column) => column);

  GeneratedColumn<String> get bookName =>
      $composableBuilder(column: $table.bookName, builder: (column) => column);

  GeneratedColumn<String> get bookDescr =>
      $composableBuilder(column: $table.bookDescr, builder: (column) => column);

  GeneratedColumn<String> get colorCode =>
      $composableBuilder(column: $table.colorCode, builder: (column) => column);
}

class $$BooksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BooksTable,
          Book,
          $$BooksTableFilterComposer,
          $$BooksTableOrderingComposer,
          $$BooksTableAnnotationComposer,
          $$BooksTableCreateCompanionBuilder,
          $$BooksTableUpdateCompanionBuilder,
          (Book, BaseReferences<_$AppDatabase, $BooksTable, Book>),
          Book,
          PrefetchHooks Function()
        > {
  $$BooksTableTableManager(_$AppDatabase db, $BooksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$BooksTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$BooksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$BooksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> title = const Value.absent(),
                Value<String?> titleAr = const Value.absent(),
                Value<int?> numberOfHadis = const Value.absent(),
                Value<String?> abvrCode = const Value.absent(),
                Value<String?> bookName = const Value.absent(),
                Value<String?> bookDescr = const Value.absent(),
                Value<String?> colorCode = const Value.absent(),
              }) => BooksCompanion(
                id: id,
                title: title,
                titleAr: titleAr,
                numberOfHadis: numberOfHadis,
                abvrCode: abvrCode,
                bookName: bookName,
                bookDescr: bookDescr,
                colorCode: colorCode,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> title = const Value.absent(),
                Value<String?> titleAr = const Value.absent(),
                Value<int?> numberOfHadis = const Value.absent(),
                Value<String?> abvrCode = const Value.absent(),
                Value<String?> bookName = const Value.absent(),
                Value<String?> bookDescr = const Value.absent(),
                Value<String?> colorCode = const Value.absent(),
              }) => BooksCompanion.insert(
                id: id,
                title: title,
                titleAr: titleAr,
                numberOfHadis: numberOfHadis,
                abvrCode: abvrCode,
                bookName: bookName,
                bookDescr: bookDescr,
                colorCode: colorCode,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$BooksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BooksTable,
      Book,
      $$BooksTableFilterComposer,
      $$BooksTableOrderingComposer,
      $$BooksTableAnnotationComposer,
      $$BooksTableCreateCompanionBuilder,
      $$BooksTableUpdateCompanionBuilder,
      (Book, BaseReferences<_$AppDatabase, $BooksTable, Book>),
      Book,
      PrefetchHooks Function()
    >;
typedef $$ChapterTableCreateCompanionBuilder =
    ChapterCompanion Function({
      Value<int> id,
      required int chapterId,
      required int bookId,
      required String title,
      required int number,
      Value<String?> hadisRange,
      required String bookName,
    });
typedef $$ChapterTableUpdateCompanionBuilder =
    ChapterCompanion Function({
      Value<int> id,
      Value<int> chapterId,
      Value<int> bookId,
      Value<String> title,
      Value<int> number,
      Value<String?> hadisRange,
      Value<String> bookName,
    });

class $$ChapterTableFilterComposer
    extends Composer<_$AppDatabase, $ChapterTable> {
  $$ChapterTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get bookId => $composableBuilder(
    column: $table.bookId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get hadisRange => $composableBuilder(
    column: $table.hadisRange,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bookName => $composableBuilder(
    column: $table.bookName,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ChapterTableOrderingComposer
    extends Composer<_$AppDatabase, $ChapterTable> {
  $$ChapterTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get bookId => $composableBuilder(
    column: $table.bookId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get hadisRange => $composableBuilder(
    column: $table.hadisRange,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bookName => $composableBuilder(
    column: $table.bookName,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ChapterTableAnnotationComposer
    extends Composer<_$AppDatabase, $ChapterTable> {
  $$ChapterTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get chapterId =>
      $composableBuilder(column: $table.chapterId, builder: (column) => column);

  GeneratedColumn<int> get bookId =>
      $composableBuilder(column: $table.bookId, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<int> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<String> get hadisRange => $composableBuilder(
    column: $table.hadisRange,
    builder: (column) => column,
  );

  GeneratedColumn<String> get bookName =>
      $composableBuilder(column: $table.bookName, builder: (column) => column);
}

class $$ChapterTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ChapterTable,
          ChapterData,
          $$ChapterTableFilterComposer,
          $$ChapterTableOrderingComposer,
          $$ChapterTableAnnotationComposer,
          $$ChapterTableCreateCompanionBuilder,
          $$ChapterTableUpdateCompanionBuilder,
          (
            ChapterData,
            BaseReferences<_$AppDatabase, $ChapterTable, ChapterData>,
          ),
          ChapterData,
          PrefetchHooks Function()
        > {
  $$ChapterTableTableManager(_$AppDatabase db, $ChapterTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$ChapterTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$ChapterTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$ChapterTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> chapterId = const Value.absent(),
                Value<int> bookId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<int> number = const Value.absent(),
                Value<String?> hadisRange = const Value.absent(),
                Value<String> bookName = const Value.absent(),
              }) => ChapterCompanion(
                id: id,
                chapterId: chapterId,
                bookId: bookId,
                title: title,
                number: number,
                hadisRange: hadisRange,
                bookName: bookName,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int chapterId,
                required int bookId,
                required String title,
                required int number,
                Value<String?> hadisRange = const Value.absent(),
                required String bookName,
              }) => ChapterCompanion.insert(
                id: id,
                chapterId: chapterId,
                bookId: bookId,
                title: title,
                number: number,
                hadisRange: hadisRange,
                bookName: bookName,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ChapterTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ChapterTable,
      ChapterData,
      $$ChapterTableFilterComposer,
      $$ChapterTableOrderingComposer,
      $$ChapterTableAnnotationComposer,
      $$ChapterTableCreateCompanionBuilder,
      $$ChapterTableUpdateCompanionBuilder,
      (ChapterData, BaseReferences<_$AppDatabase, $ChapterTable, ChapterData>),
      ChapterData,
      PrefetchHooks Function()
    >;
typedef $$HadithTableCreateCompanionBuilder =
    HadithCompanion Function({
      Value<int> id,
      Value<int?> bookId,
      Value<String?> bookName,
      Value<int?> chapterId,
      Value<int?> sectionId,
      Value<String?> hadithKey,
      Value<int?> hadithId,
      Value<String?> narrator,
      Value<String?> bn,
      Value<String?> ar,
      Value<String?> note,
      Value<int?> gradeId,
      Value<String?> grade,
      Value<String?> gradeColor,
    });
typedef $$HadithTableUpdateCompanionBuilder =
    HadithCompanion Function({
      Value<int> id,
      Value<int?> bookId,
      Value<String?> bookName,
      Value<int?> chapterId,
      Value<int?> sectionId,
      Value<String?> hadithKey,
      Value<int?> hadithId,
      Value<String?> narrator,
      Value<String?> bn,
      Value<String?> ar,
      Value<String?> note,
      Value<int?> gradeId,
      Value<String?> grade,
      Value<String?> gradeColor,
    });

class $$HadithTableFilterComposer
    extends Composer<_$AppDatabase, $HadithTable> {
  $$HadithTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get bookId => $composableBuilder(
    column: $table.bookId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bookName => $composableBuilder(
    column: $table.bookName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sectionId => $composableBuilder(
    column: $table.sectionId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get hadithKey => $composableBuilder(
    column: $table.hadithKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get hadithId => $composableBuilder(
    column: $table.hadithId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get narrator => $composableBuilder(
    column: $table.narrator,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bn => $composableBuilder(
    column: $table.bn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ar => $composableBuilder(
    column: $table.ar,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get gradeId => $composableBuilder(
    column: $table.gradeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get grade => $composableBuilder(
    column: $table.grade,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get gradeColor => $composableBuilder(
    column: $table.gradeColor,
    builder: (column) => ColumnFilters(column),
  );
}

class $$HadithTableOrderingComposer
    extends Composer<_$AppDatabase, $HadithTable> {
  $$HadithTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get bookId => $composableBuilder(
    column: $table.bookId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bookName => $composableBuilder(
    column: $table.bookName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sectionId => $composableBuilder(
    column: $table.sectionId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get hadithKey => $composableBuilder(
    column: $table.hadithKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get hadithId => $composableBuilder(
    column: $table.hadithId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get narrator => $composableBuilder(
    column: $table.narrator,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bn => $composableBuilder(
    column: $table.bn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ar => $composableBuilder(
    column: $table.ar,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get gradeId => $composableBuilder(
    column: $table.gradeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get grade => $composableBuilder(
    column: $table.grade,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get gradeColor => $composableBuilder(
    column: $table.gradeColor,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HadithTableAnnotationComposer
    extends Composer<_$AppDatabase, $HadithTable> {
  $$HadithTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get bookId =>
      $composableBuilder(column: $table.bookId, builder: (column) => column);

  GeneratedColumn<String> get bookName =>
      $composableBuilder(column: $table.bookName, builder: (column) => column);

  GeneratedColumn<int> get chapterId =>
      $composableBuilder(column: $table.chapterId, builder: (column) => column);

  GeneratedColumn<int> get sectionId =>
      $composableBuilder(column: $table.sectionId, builder: (column) => column);

  GeneratedColumn<String> get hadithKey =>
      $composableBuilder(column: $table.hadithKey, builder: (column) => column);

  GeneratedColumn<int> get hadithId =>
      $composableBuilder(column: $table.hadithId, builder: (column) => column);

  GeneratedColumn<String> get narrator =>
      $composableBuilder(column: $table.narrator, builder: (column) => column);

  GeneratedColumn<String> get bn =>
      $composableBuilder(column: $table.bn, builder: (column) => column);

  GeneratedColumn<String> get ar =>
      $composableBuilder(column: $table.ar, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<int> get gradeId =>
      $composableBuilder(column: $table.gradeId, builder: (column) => column);

  GeneratedColumn<String> get grade =>
      $composableBuilder(column: $table.grade, builder: (column) => column);

  GeneratedColumn<String> get gradeColor => $composableBuilder(
    column: $table.gradeColor,
    builder: (column) => column,
  );
}

class $$HadithTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HadithTable,
          HadithData,
          $$HadithTableFilterComposer,
          $$HadithTableOrderingComposer,
          $$HadithTableAnnotationComposer,
          $$HadithTableCreateCompanionBuilder,
          $$HadithTableUpdateCompanionBuilder,
          (HadithData, BaseReferences<_$AppDatabase, $HadithTable, HadithData>),
          HadithData,
          PrefetchHooks Function()
        > {
  $$HadithTableTableManager(_$AppDatabase db, $HadithTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$HadithTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$HadithTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$HadithTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int?> bookId = const Value.absent(),
                Value<String?> bookName = const Value.absent(),
                Value<int?> chapterId = const Value.absent(),
                Value<int?> sectionId = const Value.absent(),
                Value<String?> hadithKey = const Value.absent(),
                Value<int?> hadithId = const Value.absent(),
                Value<String?> narrator = const Value.absent(),
                Value<String?> bn = const Value.absent(),
                Value<String?> ar = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<int?> gradeId = const Value.absent(),
                Value<String?> grade = const Value.absent(),
                Value<String?> gradeColor = const Value.absent(),
              }) => HadithCompanion(
                id: id,
                bookId: bookId,
                bookName: bookName,
                chapterId: chapterId,
                sectionId: sectionId,
                hadithKey: hadithKey,
                hadithId: hadithId,
                narrator: narrator,
                bn: bn,
                ar: ar,
                note: note,
                gradeId: gradeId,
                grade: grade,
                gradeColor: gradeColor,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int?> bookId = const Value.absent(),
                Value<String?> bookName = const Value.absent(),
                Value<int?> chapterId = const Value.absent(),
                Value<int?> sectionId = const Value.absent(),
                Value<String?> hadithKey = const Value.absent(),
                Value<int?> hadithId = const Value.absent(),
                Value<String?> narrator = const Value.absent(),
                Value<String?> bn = const Value.absent(),
                Value<String?> ar = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<int?> gradeId = const Value.absent(),
                Value<String?> grade = const Value.absent(),
                Value<String?> gradeColor = const Value.absent(),
              }) => HadithCompanion.insert(
                id: id,
                bookId: bookId,
                bookName: bookName,
                chapterId: chapterId,
                sectionId: sectionId,
                hadithKey: hadithKey,
                hadithId: hadithId,
                narrator: narrator,
                bn: bn,
                ar: ar,
                note: note,
                gradeId: gradeId,
                grade: grade,
                gradeColor: gradeColor,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$HadithTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HadithTable,
      HadithData,
      $$HadithTableFilterComposer,
      $$HadithTableOrderingComposer,
      $$HadithTableAnnotationComposer,
      $$HadithTableCreateCompanionBuilder,
      $$HadithTableUpdateCompanionBuilder,
      (HadithData, BaseReferences<_$AppDatabase, $HadithTable, HadithData>),
      HadithData,
      PrefetchHooks Function()
    >;
typedef $$SectionTableCreateCompanionBuilder =
    SectionCompanion Function({
      Value<int> id,
      required int bookId,
      required String bookName,
      required int chapterId,
      required int sectionId,
      required String title,
      Value<String?> preface,
      Value<String?> number,
      Value<int?> sortOrder,
    });
typedef $$SectionTableUpdateCompanionBuilder =
    SectionCompanion Function({
      Value<int> id,
      Value<int> bookId,
      Value<String> bookName,
      Value<int> chapterId,
      Value<int> sectionId,
      Value<String> title,
      Value<String?> preface,
      Value<String?> number,
      Value<int?> sortOrder,
    });

class $$SectionTableFilterComposer
    extends Composer<_$AppDatabase, $SectionTable> {
  $$SectionTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get bookId => $composableBuilder(
    column: $table.bookId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bookName => $composableBuilder(
    column: $table.bookName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sectionId => $composableBuilder(
    column: $table.sectionId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get preface => $composableBuilder(
    column: $table.preface,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SectionTableOrderingComposer
    extends Composer<_$AppDatabase, $SectionTable> {
  $$SectionTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get bookId => $composableBuilder(
    column: $table.bookId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bookName => $composableBuilder(
    column: $table.bookName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sectionId => $composableBuilder(
    column: $table.sectionId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get preface => $composableBuilder(
    column: $table.preface,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SectionTableAnnotationComposer
    extends Composer<_$AppDatabase, $SectionTable> {
  $$SectionTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get bookId =>
      $composableBuilder(column: $table.bookId, builder: (column) => column);

  GeneratedColumn<String> get bookName =>
      $composableBuilder(column: $table.bookName, builder: (column) => column);

  GeneratedColumn<int> get chapterId =>
      $composableBuilder(column: $table.chapterId, builder: (column) => column);

  GeneratedColumn<int> get sectionId =>
      $composableBuilder(column: $table.sectionId, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get preface =>
      $composableBuilder(column: $table.preface, builder: (column) => column);

  GeneratedColumn<String> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);
}

class $$SectionTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SectionTable,
          SectionData,
          $$SectionTableFilterComposer,
          $$SectionTableOrderingComposer,
          $$SectionTableAnnotationComposer,
          $$SectionTableCreateCompanionBuilder,
          $$SectionTableUpdateCompanionBuilder,
          (
            SectionData,
            BaseReferences<_$AppDatabase, $SectionTable, SectionData>,
          ),
          SectionData,
          PrefetchHooks Function()
        > {
  $$SectionTableTableManager(_$AppDatabase db, $SectionTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$SectionTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$SectionTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$SectionTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> bookId = const Value.absent(),
                Value<String> bookName = const Value.absent(),
                Value<int> chapterId = const Value.absent(),
                Value<int> sectionId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> preface = const Value.absent(),
                Value<String?> number = const Value.absent(),
                Value<int?> sortOrder = const Value.absent(),
              }) => SectionCompanion(
                id: id,
                bookId: bookId,
                bookName: bookName,
                chapterId: chapterId,
                sectionId: sectionId,
                title: title,
                preface: preface,
                number: number,
                sortOrder: sortOrder,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int bookId,
                required String bookName,
                required int chapterId,
                required int sectionId,
                required String title,
                Value<String?> preface = const Value.absent(),
                Value<String?> number = const Value.absent(),
                Value<int?> sortOrder = const Value.absent(),
              }) => SectionCompanion.insert(
                id: id,
                bookId: bookId,
                bookName: bookName,
                chapterId: chapterId,
                sectionId: sectionId,
                title: title,
                preface: preface,
                number: number,
                sortOrder: sortOrder,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SectionTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SectionTable,
      SectionData,
      $$SectionTableFilterComposer,
      $$SectionTableOrderingComposer,
      $$SectionTableAnnotationComposer,
      $$SectionTableCreateCompanionBuilder,
      $$SectionTableUpdateCompanionBuilder,
      (SectionData, BaseReferences<_$AppDatabase, $SectionTable, SectionData>),
      SectionData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BooksTableTableManager get books =>
      $$BooksTableTableManager(_db, _db.books);
  $$ChapterTableTableManager get chapter =>
      $$ChapterTableTableManager(_db, _db.chapter);
  $$HadithTableTableManager get hadith =>
      $$HadithTableTableManager(_db, _db.hadith);
  $$SectionTableTableManager get section =>
      $$SectionTableTableManager(_db, _db.section);
}
