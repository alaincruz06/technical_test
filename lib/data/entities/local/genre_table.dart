import 'package:drift/drift.dart';

@DataClassName('GenreEntity')
class GenreTable extends Table {
  @override
  String get tableName => 'genre';

  @override
  Set<Column> get primaryKey => {idGenre};

  //PK
  IntColumn get idGenre => integer().named('id').nullable()();
  IntColumn get idMovie => integer().named('id_movie').nullable()();

  TextColumn get genre => text().nullable()();
}
