import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:technical_test/domain/models/movie.dart';
import 'package:technical_test/domain/repositories/remote/movie_db_repository.dart';

class MoviesController extends GetxController {
  MoviesController({
    required this.logger,
    required this.movieDbRepository,
  });

  final Logger logger;
  final MovieDbRepository movieDbRepository;

  int currentPage = 0;
  RxBool isLoading = false.obs;
  RxList<Movie> movies = <Movie>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadNextPage();
  }

  Future<void> loadNextPage() async {
    if (isLoading.value) return;
    isLoading.value = true;

    currentPage++;
    final List<Movie> loadedMovies =
        await movieDbRepository.getPopular(page: currentPage);

    movies.addAll(loadedMovies);
    await Future.delayed(const Duration(milliseconds: 300));
    isLoading.value = false;
  }
}
