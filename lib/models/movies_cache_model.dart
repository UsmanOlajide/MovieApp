import 'package:cineverse/models/movie.dart';
import 'package:isar/isar.dart';

part 'movies_cache_model.g.dart';

@collection
class MovieCacheModel {
  MovieCacheModel({
    this.title = '',
    this.modelId = 1,
    this.backDropPath = '',
    this.originalTitle = '',
    this.overview = '',
    this.posterPath = '',
    this.releaseDate = '',
    this.voteAverage = 0,
  }) : id = Isar.autoIncrement;

  late Id id;
  late String title;

  late int modelId;

  late String backDropPath;

  @Index(unique: true)
  late String originalTitle;

  late String overview;
  late String posterPath;
  late String releaseDate;
  late double voteAverage;

// a factory method to convert a normal movie object to a movieCacheModel object when needed
  // factory MovieCacheModel.toCache(Movie movie) {
  factory MovieCacheModel.movieToCacheMovie(Movie movie) {
    return MovieCacheModel(
      title: movie.title,
      modelId: movie.id,
      backDropPath: movie.backDropPath,
      originalTitle: movie.originalTitle,
      overview: movie.overview,
      posterPath: movie.posterPath,
      releaseDate: movie.releaseDate,
      voteAverage: movie.voteAverage,
      // voteAverage: int.tryParse(movie.voteAverage.toString()) ?? 66,
    );
  }
}
