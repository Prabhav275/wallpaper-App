import 'package:flutter/material.dart';
import 'package:wallpaper_app/views/screens/search.dart';

class SearchBar extends StatelessWidget {
  SearchBar({Key? key}) : super(key: key);

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Color.fromARGB(60, 226, 224, 220),
          border: Border.all(color: Color.fromARGB(255, 192, 187, 187)),
          borderRadius: BorderRadius.circular(25)),
      child: Row(children: [
        Expanded(
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: "Search Wallpapers",
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SearchScreen(query: _searchController.text)));
          },
          child: Icon(Icons.search),
        )
      ]),
    );
  }
}
