import 'package:drift/drift.dart';

@DataClassName('MovieEntity')
class MovieTable extends Table {
  @override
  String get tableName => 'movie';

  @override
  Set<Column> get primaryKey => {idMovie};

  //PK
  IntColumn get idMovie => integer().named('id').nullable()();

  BoolColumn get adult => boolean().nullable()();
  TextColumn get backdropPath => text().named('backdrop_path').nullable()();
  TextColumn get posterPath => text().named('poster_path').nullable()();
  TextColumn get originalLanguage =>
      text().named('original_language').nullable()();
  TextColumn get originalTitle => text().named('original_title').nullable()();
  DateTimeColumn get releaseDate =>
      dateTime().named('release_date').nullable()();
  TextColumn get overview => text().nullable()();
  TextColumn get title => text().nullable()();
  BoolColumn get video => boolean().nullable()();
  RealColumn get popularity => real().nullable()();
  RealColumn get voteAverage => real().named('vote_average').nullable()();
  IntColumn get voteCount => integer().named('vote_count').nullable()();
}
