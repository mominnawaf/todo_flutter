import 'package:flutter/material.dart';
import 'constants/constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 20),
          hintText: "Search Task",
          hintStyle: TextStyle(color: tdBlack),
          border: InputBorder.none),
    );
  }
}
