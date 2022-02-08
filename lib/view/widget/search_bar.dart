import 'package:flutter/material.dart';
import 'package:rchive/view/constant/constant.dart';

// ignore: must_be_immutable
class SearchBar extends StatelessWidget {
  var hintText = 'Search';

  SearchBar({
    Key? key,
    this.hintText = 'Search',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kGreyColor,
      style: const TextStyle(
        color: kNavGreyColor,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        prefixIcon: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/search.png',
            height: 22,
          ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kNavGreyColor,
          fontSize: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kBorderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kBorderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
