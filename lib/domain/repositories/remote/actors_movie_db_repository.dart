import 'package:technical_test/domain/models/actor.dart';

abstract class ActorsMovieDbRepository {
  Future<List<Actor>> getActorsByMovieId(String movieId);
}
