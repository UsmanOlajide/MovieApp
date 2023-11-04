// //* Learning about a Singleton

// void main(List<String> args) {
//   final testOne = Testing();
//   final testTwo = Testing();
//   print(identical(testOne, testTwo));
//   // print('aaaa');
// }

// class Testing {
//   Testing._aaa();

//   static final _instance = Testing._aaa();

//   factory Testing() {
//     return _instance;
//   }
// }

//* Learning how to use throw and rethrow keywords

void main(List<String> args) {
  try {
    try {
      throw Exception('Error');
    } catch (e) {
      rethrow;
    }
  } catch (e) {
    print('This is an $e');
  }
}
