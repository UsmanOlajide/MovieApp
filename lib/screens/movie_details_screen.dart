// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cineverse/constants.dart';
import 'package:cineverse/models/movie.dart';
import 'package:cineverse/services/cache_service.dart';
import 'package:cineverse/services/networking.dart';
import 'package:cineverse/widgets/overview.dart';

class MovieDetailsScreen extends StatefulWidget {
  const MovieDetailsScreen({super.key, required this.movie});
  final Movie movie;

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // title: Text('SLIVERAPPBAR'),

            leading: Container(
              height: 70,
              width: 70,
              margin: const EdgeInsets.only(left: 5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black54,
              ),
              child: IconButton(
                padding: const EdgeInsets.only(left: 5),
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () async {
                  await CacheServices().toggleFavourite(widget.movie);

                  // print('added');
                  setState(() {});
                },
                icon: FutureBuilder(
                  future: CacheServices().isFavorited(widget.movie.id),
                  builder: (_, snapshot) {
                    if (snapshot.hasData) {
                      final isFavorited = snapshot.data!;
                      if (isFavorited) {
                        return const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 45,
                        );
                      }
                    }
                    return const Icon(
                      Icons.star_outline,
                      color: Colors.white,
                      size: 45,
                    );
                  },
                ),
              )
            ],
            backgroundColor: Colors.transparent,
            expandedHeight: MediaQuery.of(context).size.height * 0.56,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                // alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  Image.network(
                    '${Constants.imagePath}${widget.movie.posterPath}',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.transparent, Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Positioned(
                    width: MediaQuery.of(context).size.width,
                    bottom: 20,
                    child: Column(
                      children: [
                        Text(
                          widget.movie.title,
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                          softWrap: true,
                          maxLines: 3,
                          // overflow: TextOverflow.fade,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              '${widget.movie.voteAverage.toInt()}/10',
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                              softWrap: true,
                              maxLines: 3,
                              // overflow: TextOverflow.fade,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Release : ${widget.movie.releaseDate}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Overview',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Overview(overview: widget.movie.overview)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Text(
//   movie.overview,
//   style: const TextStyle(fontSize: 18),
//   // softWrap: true,
//   textAlign: TextAlign.justify,
// ),

// class _FavouriteIcon extends StatefulWidget {
//   const _FavouriteIcon({Key? key, required this.movie}) : super(key: key);
//   final Movie movie;

//   @override
//   State<_FavouriteIcon> createState() => __FavouriteIconState();
// }

// class __FavouriteIconState extends State<_FavouriteIcon> {
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: () async {
//         await CacheServices().toggleFavourite(widget.movie);
//         setState(() {});
//       },
//       icon: FutureBuilder(
//         future: CacheServices().isFavorited(widget.movie.id),
//         builder: (_, snapshot) {
//           if (snapshot.hasData) {
//             final isFavorited = snapshot.data!;
//             if (isFavorited) {
//               return const Icon(
//                 Icons.star,
//                 color: Colors.yellow,
//                 size: 45,
//               );
//             }
//           }
//           return const Icon(
//             Icons.star_outline,
//             color: Colors.white,
//             size: 45,
//           );
//         },
//       ),
//     );
//   }
// }
