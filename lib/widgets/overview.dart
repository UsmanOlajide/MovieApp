import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Overview extends StatefulWidget {
  const Overview({super.key, required this.overview});

  final String overview;
  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  late String firstHalf;
  late String secondHalf;
  bool collapsed = true;

  // @override
  // void initState() {
  //   super.initState();
  //   firstHalf = widget.overview.substring(0, 125);
  //   secondHalf = widget.overview.substring(125, widget.overview.length);
  // }

  @override
  void initState() {
    super.initState();
    if (widget.overview.length < 150) {
      firstHalf = widget.overview;
      secondHalf = '';
    } else {
      firstHalf = widget.overview.substring(0, 150);
      secondHalf = widget.overview.substring(150, widget.overview.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    return secondHalf.isEmpty
        ? Text(
            firstHalf,
            style: const TextStyle(fontSize: 19),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                collapsed ? '$firstHalf...' : '$firstHalf $secondHalf',
                style: const TextStyle(fontSize: 19),
                textAlign: TextAlign.justify,
              ),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
                onPressed: () {
                  setState(() {
                    collapsed = !collapsed;
                  });
                },
                child: Text(collapsed ? 'more' : 'less'),
              ),
            ],
          );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return collapsed
  //       ? Column(
  //           crossAxisAlignment: CrossAxisAlignment.end,
  //           children: [
  //             Text(
  //               '$firstHalf...',
  //               style: const TextStyle(fontSize: 19),
  //             ),
  //             TextButton(
  //               style: TextButton.styleFrom(foregroundColor: Colors.blue),
  //               onPressed: () {
  //                 setState(() {
  //                   if (collapsed) {
  //                     firstHalf = widget.overview;
  //                     // collapsed = false;
  //                   }
  //                 });
  //               },
  //               child: Text('more'),
  //             ),
  //           ],
  //         )
  //       : Text(
  //           '$firstHalf $secondHalf',
  //           style: const TextStyle(fontSize: 19),
  //         );
  // }
}
