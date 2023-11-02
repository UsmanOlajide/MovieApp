import 'package:carousel_slider/carousel_slider.dart';
import 'package:cineverse/constants.dart';
import 'package:cineverse/models/movie.dart';
import 'package:cineverse/screens/movie_details_screen.dart';
import 'package:flutter/material.dart';

class TrendingMovies extends StatelessWidget {
  const TrendingMovies({
    super.key,
    required this.snapshot,
  });

  final AsyncSnapshot<List<Movie>> snapshot;
  // final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (ctx, index, pageIndex) {
        final movie = snapshot.data![index];
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) {
                  return MovieDetailsScreen(
                    movie: snapshot.data![index],
                  );
                },
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              height: 300,
              width: 200,
              child: Image.network(
                '${Constants.imagePath}${snapshot.data![index].posterPath}',
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 300,
        viewportFraction: 0.55,
        enlargeCenterPage: true,
        autoPlay: false,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayInterval: const Duration(seconds: 2),
      ),
      itemCount: snapshot.data!.length,
    );
  }
}
