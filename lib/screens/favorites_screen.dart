import 'package:cineverse/services/cache_service.dart';
import 'package:cineverse/widgets/favorited_movie.dart';

import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: CacheServices().fetchFavourites(),
        initialData: CacheServices().movies,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }
          if (snapshot.hasData) {
            final movies = snapshot.data!;
            if (movies.isEmpty) {
              return const Center(
                child: Text('Nothing to show here'),
              );
            }
            return ListView.builder(
              itemCount: movies.length,
              itemBuilder: (_, i) {
                return FavoritedMovie(
                  movie: movies[i],
                  onPopped: () => setState(() {}),
                );
              },
            );
          }
          return const Center(
            child: Text('loading...'),
          );
        },
      ),
    );
  }
}












  //  if (snapshot.hasData) {
  //           final movies = snapshot.data!;
  //           return ListView.builder(
  //             itemCount: movies.length,
  //             itemBuilder: (_, i) {
  //                 return Padding(
  //                 padding: const EdgeInsets.all(10),
  //                 child: Container(
  //                   width: 300,
  //                   height: 200,
  //                   child: Image.network(
  //                     '${Constants.imagePath}${movies[i].posterPath}',
  //                     // width: 300,
  //                     fit: BoxFit.cover,
  //                   ),
  //                 ),);
  //             },
  //           );
  //         }

// import 'package:flutter/material.dart';

// class FavoritesScreen extends StatelessWidget {
//   const FavoritesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Favorites'),
//         backgroundColor: Colors.grey,
//         foregroundColor: Colors.white,
//       ),
//       body: Row(
//         children: [
//           Container(
//             margin: EdgeInsets.all(20),
//             height: 200,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.asset(
//                 'assets/images/gen v.jpeg',
//               ),
//             ),
//           ),
//           Text(),
//         ],
//       ),
//     );


    // return InkWell(
    //   onTap: () {},
    //   child: Card(
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(15),
    //     ),
    //     elevation: 4,
    //     margin: const EdgeInsets.all(10),
    //     child: Column(
    //       children: [
    //         Stack(
    //           children: [
    //             ClipRRect(
    //               borderRadius: const BorderRadius.only(
    //                   topLeft: Radius.circular(15),
    //                   topRight: Radius.circular(15)),
    //               child: Image.asset(
    //                 'assets/images/gen v.jpeg',
    //                 height: 250,
    //                 width: double.infinity,
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //             Positioned(
    //               bottom: 20,
    //               right: 10,
    //               child: Container(
    //                 width: 300,
    //                 color: Colors.black54,
    //                 padding: const EdgeInsets.symmetric(
    //                   vertical: 5,
    //                   horizontal: 20,
    //                 ),
    //                 child: Text(
    //                   'title',
    //                   style: const TextStyle(fontSize: 26, color: Colors.white),
    //                   softWrap: true,
    //                   overflow: TextOverflow.fade,
    //                 ),
    //               ),
    //             )
    //           ],
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.all(20),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceAround,
    //             children: [
    //               Row(
    //                 children: [
    //                   const Icon(Icons.schedule),
    //                   const SizedBox(width: 5),
    //                   Text('8 mins'),
    //                 ],
    //               ),
    //               // SizedBox(width: 200),
    //               Row(
    //                 children: [
    //                   const Icon(Icons.work),
    //                   const SizedBox(width: 5),
    //                   Text('complexityText'),
    //                 ],
    //               ),
    //               Row(
    //                 children: [
    //                   const Icon(Icons.attach_money),
    //                   const SizedBox(width: 5),
    //                   Text('affordabilityText'),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
