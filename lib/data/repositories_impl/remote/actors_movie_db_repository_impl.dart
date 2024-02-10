import 'package:technical_test/data/datasources/remote/actors_movie_db_datasource.dart';
import 'package:technical_test/domain/models/actor.dart';
import 'package:technical_test/domain/repositories/remote/actors_movie_db_repository.dart';

class ActorsMovieDbRepositoryImpl extends ActorsMovieDbRepository {
  ActorsMovieDbRepositoryImpl({required this.actorMovieDbDatasource}) : super();

  final ActorMovieDbDatasource actorMovieDbDatasource;

  @override
  Future<List<Actor>> getActorsByMovieId(String movieId) async {
    return actorMovieDbDatasource.getActorsByMovieId(movieId);
  }
}
