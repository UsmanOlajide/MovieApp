import 'dart:convert';

import 'movies_cache_model.dart';

class Movie {
  const Movie({
    required this.title,
    required this.id,
    required this.backDropPath,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });

  final String title;
  final int id;
  final String backDropPath;
  final String originalTitle;
  final String overview;
  final String posterPath;
  final String releaseDate;
  final double voteAverage;

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json["id"],
      title: json["title"],
      backDropPath: json["backdrop_path"],
      originalTitle: json["original_title"],
      overview: json["overview"],
      posterPath: json["poster_path"],
      releaseDate: json["release_date"],
      // voteAverage: json["vote_average"],
      voteAverage: double.tryParse(json["vote_average"].toString()) ?? 0.0,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'backdrop_path': backDropPath,
      'original_title': originalTitle,
      'overview': overview,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'vote_average': voteAverage,
    };
  }

  String toJson() => json.encode(toMap());

// a factory method to convert a MovieCacheModel object to a Movie object
  factory Movie.cacheMovieToMovie(MovieCacheModel cacheMovie) {
    return Movie(
      title: cacheMovie.title,
      id: cacheMovie.modelId,
      backDropPath: cacheMovie.backDropPath,
      originalTitle: cacheMovie.originalTitle,
      overview: cacheMovie.overview,
      posterPath: cacheMovie.posterPath,
      releaseDate: cacheMovie.releaseDate,
      voteAverage: cacheMovie.voteAverage,
    );
  }

  @override
  String toString() {
    return 'Movie(title: $title, id: $id, backDropPath: $backDropPath, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(covariant Movie other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}















// if i were making a post request
  // Map<String, dynamic> toJson() => {
  //   "title" : title,
  //   "overview" : overview
  // };
// class Movie {
//   final String title;
//   final String overview;
//   Movie({
//     required this.title,
//     required this.overview,
//   });

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//     return <String, dynamic>{
//       'title': title,
//       'overview': overview,
//     };
//   }

//   factory Movie.fromMap(Map<String, dynamic> map) {
//     return Movie(
//       title: map['title'] as String,
//       overview: map['overview'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Movie.fromJson(String source) => Movie.fromMap(json.decode(source) as Map<String, dynamic>);
// }
