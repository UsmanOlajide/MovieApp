import 'package:flutter/material.dart';

import 'package:cineverse/constants.dart';
import 'package:cineverse/models/movie.dart';
import 'package:cineverse/screens/movie_details_screen.dart';

class FavoritedMovie extends StatelessWidget {
  const FavoritedMovie(
      {super.key, required this.movie, required this.onPopped});

  final Movie movie;
  final VoidCallback onPopped;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      // color: Colors.red,
      height: 200,
      child: InkWell(
        onTap: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) {
                return MovieDetailsScreen(movie: movie);
              },
            ),
          );
          onPopped();
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                '${Constants.imagePath}${movie.posterPath}',
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Text(
                    movie.overview,
                    style: const TextStyle(fontSize: 19),
                    // softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 6,
                  ),
                  const SizedBox(height: 20),
                  // Text('${movie.voteAverage}')
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        '${movie.voteAverage.toStringAsFixed(1)}/10',
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
