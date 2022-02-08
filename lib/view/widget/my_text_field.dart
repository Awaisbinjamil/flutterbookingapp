import 'package:flutter/material.dart';
import 'package:rchive/view/constant/constant.dart';

// ignore: must_be_immutable
class MyTextField extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var hintText;
  Color? hintTextColor;
  bool? obsecure;
  double? bottomPadding;
  TextEditingController? controller = TextEditingController();

  MyTextField({
    Key? key,
    this.hintText,
    this.hintTextColor = kLightGreyColor,
    this.bottomPadding = 15.0,
    this.controller,
    this.obsecure = false,
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: widget.bottomPadding!,
      ),
      child: TextFormField(
        cursorColor: kGreyColor,
        style: TextStyle(
          color: widget.hintTextColor,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        obscureText: widget.obsecure!,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          hintText: '${widget.hintText}',
          hintStyle: TextStyle(
              color: widget.hintTextColor,
              fontSize: 15,
              fontWeight: FontWeight.w500,),
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
      ),
    );
  }
}
