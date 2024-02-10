import 'package:drift/drift.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:technical_test/data/datasources/local/drift_database.dart';
import 'package:technical_test/data/entities/local/movie_table.dart';

part 'movies_dao.g.dart';

// Denote which tables this DAO can access
@DriftAccessor(tables: [MovieTable])
class MoviesDao extends DatabaseAccessor<AppDatabase> with _$MoviesDaoMixin {
  MoviesDao(
    this.db,
  ) : super(db);

  final AppDatabase db;
  final Logger logger = Get.find<Logger>();

  Future<List<MovieEntity>> getAllMovies() {
    return select(movieTable).map((row) {
      return MovieEntity(
        adult: row.adult,
        idMovie: row.idMovie,
        backdropPath: row.backdropPath,
        originalLanguage: row.originalLanguage,
        originalTitle: row.originalTitle,
        overview: row.overview,
        popularity: row.popularity,
        posterPath: row.posterPath,
        releaseDate: row.releaseDate,
        title: row.title,
        video: row.video,
        voteAverage: row.voteAverage,
        voteCount: row.voteCount,
      );
    }).get();
  }

  Future<MovieEntity> getMovieById(int idMovie) {
    final query = select(movieTable)
      ..where(
        (tbl) => tbl.idMovie.equals(idMovie),
      );
    return query.getSingle();
  }

  Future<int> insertMovie(
    MovieTableCompanion movieTableCompanion,
  ) async {
    return into(movieTable).insert(movieTableCompanion);
  }
}
