import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:technical_test/core/logger/logger_filter.dart';
import 'package:technical_test/data/datasources/local/drift_database.dart';
import 'package:technical_test/data/datasources/local/genres_dao.dart';
import 'package:technical_test/data/datasources/local/movies_dao.dart';
import 'package:technical_test/data/datasources/remote/actors_movie_db_datasource.dart';
import 'package:technical_test/data/datasources/remote/movie_db_datasource.dart';
import 'package:technical_test/data/repositories_impl/remote/actors_movie_db_repository_impl.dart';
import 'package:technical_test/data/repositories_impl/remote/movie_db_repository_impl.dart';
import 'package:technical_test/domain/repositories/remote/actors_movie_db_repository.dart';
import 'package:technical_test/domain/repositories/remote/movie_db_repository.dart';
import 'package:technical_test/presentation/controllers/app_controller.dart';
import 'package:technical_test/presentation/controllers/language_controller.dart';

class DependencyInjection {
  static Future<void> init() async {
    _setupLogger();

    _setupDatabase();

    await _setupCaches();

    _setupProviders();

    _setupRepositories();

    _setupControllers();
  }

  static void _setupLogger() {
    Get
      ..lazyPut<Logger>(Logger.new, fenix: true)
      ..lazyPut<Logger>(
          () => Logger(
              printer: PrettyPrinter(methodCount: 0), filter: LoggerFilter()),
          fenix: true,
          tag: "PrettyPinter");
  }

  static void _setupDatabase() {
    Get.lazyPut(() => AppDatabase());
  }

  static Future<void> _setupCaches() async {
    //SharedPreferences
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    Get.lazyPut(() => preferences);
  }

  static void _setupProviders() {
    Get
      ..lazyPut<MoviesDao>(
          () => MoviesDao(
                Get.find<AppDatabase>(),
              ),
          fenix: true)
      ..lazyPut<GenresDao>(
          () => GenresDao(
                Get.find<AppDatabase>(),
              ),
          fenix: true)
      ..lazyPut<MoviedbDatasource>(
          () => MoviedbDatasource(
                logger: Get.find<Logger>(),
                moviesDao: Get.find<MoviesDao>(),
                genreDao: Get.find<GenresDao>(),
              ),
          fenix: true)
      ..lazyPut<ActorMovieDbDatasource>(
          () => ActorMovieDbDatasource(
                logger: Get.find<Logger>(),
              ),
          fenix: true);
  }

  static void _setupRepositories() {
    Get
      ..lazyPut<MovieDbRepository>(
          () => MovieDbRepositoryImpl(
              moviedbDatasource: Get.find<MoviedbDatasource>()),
          fenix: true)
      ..lazyPut<ActorsMovieDbRepository>(
          () => ActorsMovieDbRepositoryImpl(
              actorMovieDbDatasource: Get.find<ActorMovieDbDatasource>()),
          fenix: true);
  }

  static void _setupControllers() {
    //Controllers that needs to be initialized on app startup
    Get
      ..put<LanguageController>(LanguageController())
      ..put<AppController>(AppController());
  }
}
