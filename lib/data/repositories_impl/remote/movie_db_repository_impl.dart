import 'package:technical_test/data/datasources/remote/movie_db_datasource.dart';
import 'package:technical_test/domain/models/movie.dart';
import 'package:technical_test/domain/repositories/remote/movie_db_repository.dart';

class MovieDbRepositoryImpl extends MovieDbRepository {
  MovieDbRepositoryImpl({
    required this.moviedbDatasource,
  }) : super();

  final MoviedbDatasource moviedbDatasource;

  @override
  Future<List<Movie>> getPopular({int page = 1}) async {
    return moviedbDatasource.getPopular(page: page);
  }

  @override
  Future<Movie> getMovieById(String id) async {
    return moviedbDatasource.getMovieById(id);
  }
}
