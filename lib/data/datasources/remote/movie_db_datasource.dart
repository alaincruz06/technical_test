import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:logger/logger.dart';
import 'package:technical_test/core/utils/constants.dart';
import 'package:technical_test/data/datasources/local/drift_database.dart';
import 'package:technical_test/data/datasources/local/genres_dao.dart';
import 'package:technical_test/data/datasources/local/movies_dao.dart';
import 'package:technical_test/data/entities/remote/movie_details.dart';
import 'package:technical_test/data/entities/remote/moviedb_response.dart';
import 'package:technical_test/data/exceptions/custom_exception.dart';
import 'package:technical_test/domain/mappers/movie_mapper.dart';
import 'package:technical_test/domain/models/movie.dart';
import 'package:technical_test/env.dart';

class MoviedbDatasource {
  MoviedbDatasource({
    required this.logger,
    required this.moviesDao,
    required this.genreDao,
  });

  final Logger logger;
  final MoviesDao moviesDao;
  final GenresDao genreDao;

  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {'api_key': Env.apiKey, 'language': 'es-ES'}));

  List<Movie> _jsonToMovies(Map<String, dynamic> json) {
    try {
      final movieDBResponse = MovieDbResponse.fromJson(json);

      final List<Movie> movies = movieDBResponse.results
          .where((moviedb) => moviedb.posterPath != 'no-poster')
          .map((moviedb) => MovieMapper.movieDBToEntity(moviedb))
          .toList();

      for (var movie in movies) {
        //Insert movie from API response to local DB
        moviesDao.insertMovie(MovieTableCompanion(
          adult: Value(movie.adult),
          backdropPath: Value(movie.backdropPath),
          idMovie: Value(movie.id),
          originalLanguage: Value(movie.originalLanguage),
          originalTitle: Value(movie.originalTitle),
          overview: Value(movie.overview),
          popularity: Value(movie.popularity),
          posterPath: Value(movie.posterPath),
          releaseDate: Value(movie.releaseDate),
          title: Value(movie.title),
          video: Value(movie.video),
          voteAverage: Value(movie.voteAverage),
          voteCount: Value(movie.voteCount),
        ));

        //Insert genres from movie in API response to local DB
        for (var genre in movie.genreIds) {
          genreDao.insertGenre(GenreTableCompanion(
            genre: Value(genre),
            idMovie: Value(movie.id),
          ));
        }
      }

      return movies;
    } catch (e) {
      logger.e('Error on jsonToMovies: $e');
      throw CustomException(
          code: errorCodeForMovies, errorMessage: e.toString());
    }
  }

  Future<List<Movie>> getPopular({int page = 1}) async {
    try {
      final response =
          await dio.get('/movie/popular', queryParameters: {'page': page});

      return _jsonToMovies(response.data);
    } catch (e) {
      logger.e('Error on getPopular: $e');
      throw CustomException(
          code: errorCodeForMovies, errorMessage: e.toString());
    }
  }

  Future<Movie> getMovieById(String id) async {
    try {
      final response = await dio.get('/movie/$id');
      if (response.statusCode != 200) {
        throw Exception('Movie with id: $id not found');
      }

      final movieDetails = MovieDetails.fromJson(response.data);
      final Movie movie = MovieMapper.movieDetailsToEntity(movieDetails);
      return movie;
    } catch (e) {
      logger.e('Error on getMovieById: $e');
      throw CustomException(
          code: errorCodeForMovies, errorMessage: e.toString());
    }
  }
}
