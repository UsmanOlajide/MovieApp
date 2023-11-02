import 'package:cineverse/constants.dart';
import 'package:cineverse/models/movie.dart';
import 'package:cineverse/screens/movie_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider(
      {super.key, required this.categoryName, required this.snapshot});

  final String categoryName;
  final AsyncSnapshot<List<Movie>> snapshot;

  @override
  Widget build(BuildContext context) {
    // print(popularMovies);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 5),
          child: Text(
            categoryName,
            style: GoogleFonts.poppins(fontSize: 25),
          ),
        ),
        SizedBox(
          height: 200,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
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
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                            '${Constants.imagePath}${snapshot.data![index].posterPath}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: snapshot.data!.length,
          ),
        ),
      ],
    );
  }
}
