// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cineverse/widgets/loaded_movies.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:cineverse/models/movie.dart';

import '../services/networking.dart';
import '../widgets/movie_slider.dart';
import '../widgets/popular_movies.dart';

class AllMoviesScreen extends StatelessWidget {
  const AllMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'CINEVERSE💫',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ElevatedButton(onPressed: loadData, child: Text('FETCH')),
            // const Text('dgngn'),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 5),
              child: Text(
                'Trending Movies',
                style: GoogleFonts.poppins(fontSize: 25),
              ),
            ),
            const SizedBox(height: 20),
            _ItemFutureBuilder(
              future: PopularMoviesManager().getPopularMovies(),
              initialData: PopularMoviesManager().movies,
              onDataAvailable: (movies) => PopularMovies(movies: movies),
            ),

            const SizedBox(height: 30),
            _ItemFutureBuilder(
              future: TopRatedMoviesManager().getTopRatedMovies(),
              initialData: TopRatedMoviesManager().movies,
              onDataAvailable: (movies) =>
                  MovieSlider(categoryName: 'Top Rated Movies', movies: movies),
            ),

            const SizedBox(height: 20),
            _ItemFutureBuilder(
              future: UpcomingMoviesManager().getTopRatedMovies(),
              initialData: UpcomingMoviesManager().movies,
              onDataAvailable: (movies) =>
                  MovieSlider(categoryName: 'Upcoming Movies', movies: movies),
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemFutureBuilder extends StatelessWidget {
  const _ItemFutureBuilder(
      {Key? key,
      required this.future,
      required this.onDataAvailable,
      this.initialData})
      : super(key: key);

  final Future<List<Movie>> future;
  final Widget Function(List<Movie>) onDataAvailable;
  final List<Movie>? initialData;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      initialData: initialData,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
          // print(snapshot.error.toString());
        }
        if (snapshot.hasData) {
          return onDataAvailable(snapshot.data!);
          // print('Has Data');
        }
        return const Center(
          child: Text('loading...'),
        );
      },
    );
  }
}
