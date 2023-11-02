import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../services/networking.dart';
import '../widgets/movie_slider.dart';
import '../widgets/trending_movies.dart';

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
            FutureBuilder(
              future: networking.getPopularMoviesList(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                  // print(snapshot.error.toString());
                }
                if (snapshot.hasData) {
                  return TrendingMovies(snapshot: snapshot);
                  // print('Has Data');
                }
                return const Center(
                  child: Text('loading...'),
                );
              },
            ),
            const SizedBox(height: 30),
            FutureBuilder(
              future: networking.getTopRatedMoviesList(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                }
                if (snapshot.hasData) {
                  return MovieSlider(
                    categoryName: 'Top Rated Movies',
                    snapshot: snapshot,
                  );
                }
                return const Center(
                  child: Text('loading...'),
                );
              },
            ),
            const SizedBox(height: 20),
            FutureBuilder(
              future: networking.getUpcomingMoviesList(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                }
                if (snapshot.hasData) {
                  return MovieSlider(
                    categoryName: 'Upcoming Movies',
                    snapshot: snapshot,
                  );
                }
                return const Center(
                  child: Text('loading...'),
                );
              },
            ),
            // const MovieSlider(
            //   categoryName: 'Upcoming Movies',
            // )
          ],
        ),
      ),
    );
  }
}
