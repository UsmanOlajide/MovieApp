// import 'package:cineverse/services/networking.dart';
// import 'package:flutter/material.dart';

// class Playground extends StatefulWidget {
//   const Playground({super.key});

//   @override
//   State<Playground> createState() => _PlaygroundState();
// }

// class _PlaygroundState extends State<Playground> {
//   // late int myVal;
//   late Future<String> myText;
//   final double deci = 6.8;
//   @override
//   void initState() {
//     super.initState();
//     // myVal = 44;
//     // myText = Afuture().intFuture();
//   }

//   @override
//   Widget build(BuildContext context) {
//     print(deci.toInt());
//     // print(myText);
//     return Scaffold(
//       body: FutureBuilder(
//           future: myText,
//           builder: (context, snapshot) {
//             if (snapshot.hasError) {
//               return Center(
//                 child: Text(
//                   snapshot.error.toString(),
//                   style: const TextStyle(fontSize: 30),
//                 ),
//               );
//             }
//             if (snapshot.hasData) {
//               return Center(
//                 child: Text(
//                   snapshot.data!,
//                   style: const TextStyle(fontSize: 30),
//                 ),
//               );
//             }
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(
//                 child: Text(
//                   'Loading...',
//                   style: TextStyle(fontSize: 30),
//                 ),
//               );
//             }
//             return const Center(
//               child: Text(
//                 'Default',
//                 style: TextStyle(fontSize: 30),
//               ),
//             );
//           }),
//     );
//   }
// }

void main(List<String> args) {
  final deci = 8.7;
  print(deci.toInt());
}
