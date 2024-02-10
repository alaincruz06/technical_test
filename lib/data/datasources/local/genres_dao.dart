import 'package:drift/drift.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:technical_test/data/datasources/local/drift_database.dart';
import 'package:technical_test/data/entities/local/genre_table.dart';

part 'genres_dao.g.dart';

// Denote which tables this DAO can access
@DriftAccessor(tables: [GenreTable])
class GenresDao extends DatabaseAccessor<AppDatabase> with _$GenresDaoMixin {
  GenresDao(
    this.db,
  ) : super(db);

  final AppDatabase db;
  final Logger logger = Get.find<Logger>();

  Future<List<GenreEntity>> getAllGenresByMovieId(int movieId) {
    final query = select(genreTable)
      ..where((tbl) => tbl.idMovie.equals(movieId));

    return query.map((row) {
      return GenreEntity(
          idGenre: row.idGenre, genre: row.genre, idMovie: row.idMovie);
    }).get();
  }

  Future<int> insertGenre(
    GenreTableCompanion genreTableCompanion,
  ) async {
    return into(genreTable).insert(genreTableCompanion);
  }
}
