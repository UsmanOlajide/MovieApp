import 'package:cineverse/screens/all_movies_screen.dart';
import 'package:cineverse/screens/favorites_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i) {
          setState(() => _currentIndex = i);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _currentIndex == 0 ? Colors.yellow : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: _currentIndex == 1 ? Colors.yellow : Colors.grey,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

const _tabs = [
  AllMoviesScreen(),
  FavoritesScreen(),
];


// USING JSON DECODE
  // Future<void> loadData() async {
  //   final url = Uri.parse('https://api.themoviedb.org/3/movie/popular');
  //   final headers = {
  //     'accept': 'application/json',
  //     'Authorization':
  //         'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwZWNlNDU2MmIzM2UzOThhNzk0NmNlOGE5YjI2ZGU1YSIsInN1YiI6IjY1MjJhNGZlMGNiMzM1MTZmZDQ1OGVlNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.IRrxamZQ9Tnxjt-ptAtcTRu5FOb2he_xcS5cN4J4Y_8'
  //   };

  //   final response = await http.get(url, headers: headers);

  //   final Map<String, dynamic> data = jsonDecode(response.body);
  //   final List<dynamic> listOfPopularMovies = data['results'];

  //   setState(() {
  //     popularMovies = listOfPopularMovies;
  //   });
  //   // print(popularMovies);
  //   // return movieData;
  //   // print(data['results'][0]['original_title']);
  // }