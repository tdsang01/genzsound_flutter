import 'package:flutter/material.dart';

// class MySearchBar extends StatelessWidget {
//   const MySearchBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SearchBar(
//       // backgroundColor:
//       leading: const Icon(Icons.search),
//       textStyle: MaterialStateProperty.all(
//         const TextStyle(
//           color: Colors.teal,
//           fontWeight: FontWeight.bold,
//           backgroundColor: Colors.black87,
//           // decoration:
//         ),
//       ),
//       shape: MaterialStateProperty.all(
//         const ContinuousRectangleBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(20),
//           ),
//         ),
//       ),
//     );
//   }
// }

class MySearchBar extends StatefulWidget {
  final Function(String text) onSearch;

  const MySearchBar({
    super.key,
    required this.onSearch,
  });

  @override
  State<MySearchBar> createState() => _MySearchBoxState();
}

class _MySearchBoxState extends State<MySearchBar> {
  final TextEditingController searchController = TextEditingController();

  void handleSearch() {
    widget.onSearch(searchController.text);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      controller: searchController,
      obscureText: false,
      style: const TextStyle(
        fontSize: 18.0,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black26,
          ),
        ),
        // fillColor: Colors.black26,
        filled: true,
        prefixIcon: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () => handleSearch(),
        ),
      ),
    );
  }
}
