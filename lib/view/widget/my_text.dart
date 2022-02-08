import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rchive/view/constant/constant.dart';

// ignore: must_be_immutable
class MyText extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var text, color, weight, align, decoration, fontFamily;
  double? size;
  double? paddingTop, paddingLeft, paddingRight, paddingBottom;
  // ignore: prefer_typing_uninitialized_variables
  var maxlines, overFlow;
  VoidCallback? onTap;

  MyText({
    Key? key,
    this.onTap,
    this.text,
    this.size,
    this.maxlines = 100,
    this.decoration = TextDecoration.none,
    this.color = kBlackColor,
    this.weight = FontWeight.w400,
    this.align,
    this.overFlow,
    this.fontFamily = 'Inter',
    this.paddingTop = 0,
    this.paddingRight = 0,
    this.paddingLeft = 0,
    this.paddingBottom = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: paddingTop!,
        left: paddingLeft!,
        right: paddingRight!,
        bottom: paddingBottom!,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          "$text",
          style: TextStyle(
            fontSize: size,
            color: color,
            fontWeight: weight,
            decoration: decoration,
            fontFamily: '$fontFamily',
          ),
          textAlign: align,
          maxLines: maxlines,
          overflow: overFlow,
        ),
      ),
    );
  }
}
