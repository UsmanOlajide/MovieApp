import 'package:cineverse/models/movies_cache_model.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../models/movie.dart';

class CacheServices {
  late Future<Isar> _isar;

  static final CacheServices _singleton = CacheServices._internal();

  factory CacheServices() {
    return _singleton;
  }

  CacheServices._internal() {
    _isar = _initiate();
  }

  Future<Isar> _initiate() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [MovieCacheModelSchema],
      directory: dir.path,
    );
    return isar;
  }

  Future<List<Movie>> fetchFavourites() async {
    final isar = await _isar;
    //using movieCacheModel because I don't want to mess with the main movie object
    final cachedMovies = await isar.movieCacheModels.where().findAll();
    // return cachedMovies.map(Movie.fromCache).toList();
    return cachedMovies.map(Movie.cacheMovieToMovie).toList();
  }

  Future<void> toggleFavourite(Movie movie) async {
    final isar = await _isar;
    final found = await isar.movieCacheModels
        .where()
        .filter()
        .modelIdEqualTo(movie.id)
        .findAll();

    if (found.isNotEmpty) {
      await isar.writeTxn(() async {
        await isar.movieCacheModels.delete(found.first.id);
      });
    } else {
      await isar.writeTxn(() async {
        await isar.movieCacheModels
            .put(MovieCacheModel.movieToCacheMovie(movie));
      });
    }
  }

  Future<bool> isFavorited(int id) async {
    final isar = await _isar;
    final modelIds = await isar.movieCacheModels
        .where()
        .distinctByModelId()
        .modelIdProperty()
        .findAll();
    if (modelIds.contains(id)) return true;
    return false;
  }
}
