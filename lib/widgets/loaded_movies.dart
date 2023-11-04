import 'package:cineverse/models/movie.dart';
import 'package:cineverse/services/networking.dart';

class PopularMoviesManager {
  PopularMoviesManager._internal();

  List<Movie>? movies;

  static final _singleton = PopularMoviesManager._internal();

  factory PopularMoviesManager() {
    return _singleton;
  }

  Future<List<Movie>> getPopularMovies() async {
    try {
      final popularMoviesList = await networking.getPopularMoviesList();
      movies = popularMoviesList;
      return popularMoviesList;
    } catch (e) {
      rethrow;
    }
  }
}

class TopRatedMoviesManager {
  TopRatedMoviesManager._internal();

  List<Movie>? movies;

  static final _singleton = TopRatedMoviesManager._internal();

  factory TopRatedMoviesManager() {
    return _singleton;
  }

  Future<List<Movie>> getTopRatedMovies() async {
    try {
      final topRatedList = await networking.getTopRatedMoviesList();
      movies = topRatedList;
      return topRatedList;
    } catch (e) {
      rethrow;
    }
  }
}

class UpcomingMoviesManager {
  UpcomingMoviesManager._internal();

  List<Movie>? movies;

  static final _singleton = UpcomingMoviesManager._internal();

  factory UpcomingMoviesManager() => _singleton;

  Future<List<Movie>> getTopRatedMovies() async {
    try {
      final upComingList = await networking.getUpcomingMoviesList();
      movies = upComingList;
      return upComingList;
    } catch (e) {
      rethrow;
    }
  }
}
