import 'package:flutter/material.dart';

import 'package:cineverse/constants.dart';
import 'package:cineverse/models/movie.dart';
import 'package:cineverse/screens/movie_details_screen.dart';

class FavoriteMovies extends StatelessWidget {
  const FavoriteMovies({super.key, required this.snapshot});

  final AsyncSnapshot<List<Movie>> snapshot;

  @override
  Widget build(BuildContext context) {
    final movies = snapshot.data!;
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (_, i) {
        return Container(
          margin: const EdgeInsets.all(20),
          // color: Colors.red,
          height: 200,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return MovieDetailsScreen(
                      movie: movies[i],
                    );
                  },
                ),
              );
              // Navigator.of(context).pop();
            },
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    '${Constants.imagePath}${movies[i].posterPath}',
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        movies[i].overview,
                        style: const TextStyle(fontSize: 19),
                        // softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6,
                      ),
                      const SizedBox(height: 20),
                      // Text('${movies[i].voteAverage}')
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            '${movies[i].voteAverage.toInt()}/10',
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
      },
    );
  }
}
