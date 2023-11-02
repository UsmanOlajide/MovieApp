import 'dart:convert';

import 'package:cineverse/constants.dart';
import 'package:cineverse/models/movie.dart';
// import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class Networking {
  const Networking();

  static const baseURL = 'https://api.themoviedb.org/3';
  final popularMoviesUrl = '$baseURL/movie/popular?api_key=${Constants.apiKey}';
  final topRatedMoviesUrl =
      '$baseURL/movie/top_rated?api_key=${Constants.apiKey}';
  final upcomingMoviesUrl =
      '$baseURL/movie/upcoming?api_key=${Constants.apiKey}';

  final addToFavoriteUrl =
      '$baseURL/account/20621875/favorite?api_key=${Constants.apiKey}';

  final favouritesURL =
      '$baseURL/account/${Constants.accountId}/favorite/movies';

  static const _headers = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2MmIzMmQ4OWRlZDA2NTU5OWM4ZTk2Mzk1YjZhZWQxMSIsInN1YiI6IjY1Mzk1Yzk5ZWM0NTUyMDBjOTIxOWIzMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Mi7XmQt92xheB-46ZVCyh07u9UUemXFIj85_oNlVCio'
  };

  Future<List<Movie>> getPopularMoviesList() async {
    final response = await http.get(Uri.parse(popularMoviesUrl));

    if (response.statusCode >= 400) {
      print(response.statusCode);
    }

    final data = response.body;
    final List<dynamic> decodedData = json.decode(data)['results'];

    return decodedData.map((movie) => Movie.fromJson(movie)).toList();
  }

  Future<List<Movie>> getTopRatedMoviesList() async {
    final response = await http.get(Uri.parse(topRatedMoviesUrl));

    if (response.statusCode >= 400) {
      print(response.statusCode);
    }

    final data = response.body;
    final List<dynamic> decodedData = json.decode(data)['results'];

    return decodedData.map((movie) => Movie.fromJson(movie)).toList();
  }

  Future<List<Movie>> getUpcomingMoviesList() async {
    final response = await http.get(Uri.parse(upcomingMoviesUrl));

    if (response.statusCode >= 400) {
      print(response.statusCode);
    }

    final data = response.body;
    final List<dynamic> decodedData = json.decode(data)['results'];

    return decodedData.map((movie) => Movie.fromJson(movie)).toList();
  }

  Future<List<Movie>> getFavouriteMovies() async {
    final response = await http.get(
      Uri.parse(favouritesURL),
      headers: _headers,
    );

    if (response.statusCode >= 400) {
      print(response.statusCode);
    }

    final data = response.body;
    final List<dynamic> decodedData = json.decode(data)['results'];

    return decodedData.map((movie) => Movie.fromJson(movie)).toList();
  }

  Future<void> addToFavorite(Movie movie) async {
    final url = Uri.parse("$baseURL/account/${Constants.accountId}/favorite");

    var response = await http.post(
      url,
      headers: _headers,
      body: json.encode({'id': movie.id}),
    );
    print(response.body);

    if (response.statusCode == 200) {
      print('favorite successful');
    } else {
      print('failed to add fave ${response.statusCode}');
    }
  }
}

const networking = Networking();






// class Afuture {
//   Future<String> intFuture() async {
//     await Future.delayed(Duration(seconds: 3));
//     return 'Async Successfully completed!';
//   }
// }
