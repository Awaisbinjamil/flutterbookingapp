import 'package:flutter/material.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/filter/tabs/feature.dart';
import 'package:rchive/view/widget/my_text.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            MyText(
              size: 13,
              color: kBlackColor4,
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est fringilla leo condimentum maecenas feugiat in imperdiet molestie vel. Duis velit nibh sagittis, purus. Tellus cursus vestibulum, neque bibendum duis. Leo tortor turpis sed tellus, morbi.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Est fringilla leo condimentum maecenas feugiat in imperdiet molestie vel. Duis velit nibh sagittis, purus. Tellus cursus vestibulum, neque bibendum duis. Leo tortor turpis sed tellus, morbi.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Est fringilla leo condimentum maecenas feugiat in imperdiet molestie vel. Duis velit nibh sagittis, purus. Tellus cursus vestibulum, neque bibendum duis. Leo tortor turpis sed tellus, morbi.',
            ),
          ],
        ),
        const Contact(),
      ],
    );
  }
}
