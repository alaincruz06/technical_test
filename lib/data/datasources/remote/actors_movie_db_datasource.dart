import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:technical_test/core/utils/constants.dart';
import 'package:technical_test/data/entities/remote/credits_response.dart';
import 'package:technical_test/data/exceptions/custom_exception.dart';
import 'package:technical_test/domain/mappers/actor_mapper.dart';
import 'package:technical_test/domain/models/actor.dart';
import 'package:technical_test/env.dart';

class ActorMovieDbDatasource {
  ActorMovieDbDatasource({
    required this.logger,
  });

  final Logger logger;

  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {'api_key': Env.apiKey, 'language': 'es-ES'}));

  Future<List<Actor>> getActorsByMovieId(String movieId) async {
    try {
      final response = await dio.get('/movie/$movieId/credits');

      final castResponse = CreditsResponse.fromJson(response.data);

      List<Actor> actors = castResponse.cast
          .map((cast) => ActorMapper.castToEntity(cast))
          .toList();

      return actors;
    } catch (e) {
      logger.e('Error on getActorsByMovieId: $e');
      throw CustomException(
          code: errorCodeForActors, errorMessage: e.toString());
    }
  }
}
