import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';

class Buy extends StatefulWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  RangeValues prices = const RangeValues(10, 20);
  RangeLabels priceLabels = const RangeLabels('1', '100');
  RangeValues beds = const RangeValues(10, 20);
  RangeLabels bedsLabels = const RangeLabels('1', '100');
  RangeValues baths = const RangeValues(10, 20);
  RangeLabels bathsLabels = const RangeLabels('1', '100');
  RangeValues cars = const RangeValues(10, 20);
  RangeLabels carsLabels = const RangeLabels('1', '100');
  RangeValues yeild = const RangeValues(10, 20);
  RangeLabels yeildLabels = const RangeLabels('1', '100');

  List properties = [
    'House',
    'Hotels',
    'Villa',
    'Apartment',
  ];

  // ignore: prefer_typing_uninitialized_variables
  var selectedProperty = 'All';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 8,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 25),
            physics: const BouncingScrollPhysics(),
            children: [
              ListTile(
                title: MyText(
                  text: 'Property type',
                  size: 16,
                  weight: FontWeight.w600,
                  fontFamily: 'Mulish',
                ),
                subtitle: MyText(
                  paddingTop: 15,
                  text: selectedProperty,
                  size: 16,
                  weight: FontWeight.w600,
                  fontFamily: 'Mulish',
                ),
                trailing: PopupMenuButton(
                  icon: RotatedBox(
                    quarterTurns: 2,
                    child: Image.asset(
                      'assets/images/back.png',
                      height: 18,
                    ),
                  ),
                  itemBuilder: (context) => List.generate(
                    properties.length,
                    (index) => PopupMenuItem(
                      onTap: () {
                        setState(() {
                          selectedProperty = properties[index];
                        });
                      },
                      child: SizedBox(
                        width: Get.width,
                        child: MyText(
                          text: properties[index],
                        ),
                      ),
                      value: properties[index],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MyText(
                    paddingLeft: 15.0,
                    text: 'Price',
                    size: 16,
                    paddingBottom: 10,
                    weight: FontWeight.w500,
                    color: kBlackColor2,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      valueIndicatorColor: Colors.transparent,
                      valueIndicatorTextStyle: const TextStyle(
                        color: kBlackColor,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    child: RangeSlider(
                      divisions: 5,
                      onChanged: (value) {
                        setState(() {
                          prices = value;
                          priceLabels = RangeLabels(
                            "\$${value.start.toInt().toString()}k",
                            "\$${value.end.toInt().toString()}m",
                          );
                        });
                      },
                      min: 1,
                      max: 100,
                      activeColor: kSecondaryColor,
                      inactiveColor: kSecondaryColor.withOpacity(0.1),
                      values: prices,
                      labels: priceLabels,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MyText(
                    paddingLeft: 15.0,
                    paddingBottom: 10.0,
                    text: 'Beds',
                    size: 16,
                    weight: FontWeight.w500,
                    color: kBlackColor2,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      valueIndicatorColor: Colors.transparent,
                      valueIndicatorTextStyle: const TextStyle(
                        color: kBlackColor,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    child: RangeSlider(
                      divisions: 5,
                      onChanged: (value) {
                        setState(() {
                          beds = value;
                          bedsLabels = RangeLabels(
                            "\$${value.start.toInt().toString()}k",
                            "\$${value.end.toInt().toString()}+",
                          );
                        });
                      },
                      min: 1,
                      max: 100,
                      activeColor: kSecondaryColor,
                      inactiveColor: kSecondaryColor.withOpacity(0.1),
                      values: beds,
                      labels: bedsLabels,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MyText(
                    paddingLeft: 15.0,
                    paddingBottom: 10.0,
                    text: 'Baths',
                    size: 16,
                    weight: FontWeight.w500,
                    color: kBlackColor2,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      valueIndicatorColor: Colors.transparent,
                      valueIndicatorTextStyle: const TextStyle(
                        color: kBlackColor,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    child: RangeSlider(
                      divisions: 5,
                      onChanged: (value) {
                        setState(() {
                          baths = value;
                          bathsLabels = RangeLabels(
                            "\$${value.start.toInt().toString()}k",
                            "\$${value.end.toInt().toString()}+",
                          );
                        });
                      },
                      min: 1,
                      max: 100,
                      activeColor: kSecondaryColor,
                      inactiveColor: kSecondaryColor.withOpacity(0.1),
                      values: baths,
                      labels: bathsLabels,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MyText(
                    paddingLeft: 15.0,
                    paddingBottom: 10.0,
                    text: 'Cars',
                    size: 16,
                    weight: FontWeight.w500,
                    color: kBlackColor2,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      valueIndicatorColor: Colors.transparent,
                      valueIndicatorTextStyle: const TextStyle(
                        color: kBlackColor,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    child: RangeSlider(
                      divisions: 5,
                      onChanged: (value) {
                        setState(() {
                          cars = value;
                          carsLabels = RangeLabels(
                            "\$${value.start.toInt().toString()}k",
                            "\$${value.end.toInt().toString()}+",
                          );
                        });
                      },
                      min: 1,
                      max: 100,
                      activeColor: kSecondaryColor,
                      inactiveColor: kSecondaryColor.withOpacity(0.1),
                      values: cars,
                      labels: carsLabels,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MyText(
                    paddingLeft: 15.0,
                    paddingBottom: 10.0,
                    text: 'Yeild',
                    size: 16,
                    weight: FontWeight.w500,
                    color: kBlackColor2,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      valueIndicatorColor: Colors.transparent,
                      valueIndicatorTextStyle: const TextStyle(
                        color: kBlackColor,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    child: RangeSlider(
                      divisions: 5,
                      onChanged: (value) {
                        setState(() {
                          yeild = value;
                          yeildLabels = RangeLabels(
                            "\$${value.start.toInt().toString()}k",
                            "\$${value.end.toInt().toString()}+",
                          );
                        });
                      },
                      min: 1,
                      max: 100,
                      activeColor: kSecondaryColor,
                      inactiveColor: kSecondaryColor.withOpacity(0.1),
                      values: yeild,
                      labels: yeildLabels,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: MyButton(
                  onPressed: () {},
                  height: 45,
                  weight: FontWeight.w700,
                  text: 'Search',
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
