import 'package:flutter/material.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';

class FilterMain extends StatefulWidget {
  const FilterMain({Key? key}) : super(key: key);

  @override
  _FilterMainState createState() => _FilterMainState();
}

class _FilterMainState extends State<FilterMain> {
  var currentIndex = 0;
  RangeValues values = const RangeValues(10, 20);
  RangeLabels labels = const RangeLabels('0', '1');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: TextFormField(
          cursorColor: kBlackColor2,
          style: const TextStyle(
            fontFamily: 'Mulish',
            color: kNavGreyColor,
          ),
          decoration: InputDecoration(
            hintText: 'Search suburb, postcode, state ',
            hintStyle: const TextStyle(
              fontFamily: 'Mulish',
              color: kNavGreyColor,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: kLightGreyColor.withOpacity(0.3),
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: kLightGreyColor.withOpacity(0.3),
                width: 1,
              ),
            ),
            prefixIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/search.png',
                  height: 22,
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 20),
        physics: const BouncingScrollPhysics(),
        children: [
          Center(
            child: MyText(
              text: 'Filter',
              size: 18,
              weight: FontWeight.w700,
              fontFamily: 'Mulish',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: filterTypes('Buy', 0),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: filterTypes('Rent', 1),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: filterTypes('Sold', 2),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            title: MyText(
              text: 'Property type',
              size: 16,
              fontFamily: 'Mulish',
              weight: FontWeight.w600,
              color: kBlackColor2,
            ),
            trailing: RotatedBox(
              quarterTurns: 2,
              child: Image.asset(
                'assets/images/back.png',
                height: 15,
              ),
            ),
          ),
          MyText(
            paddingLeft: 15.0,
            text: 'All',
            size: 16,
            fontFamily: 'Mulish',
            weight: FontWeight.w600,
            color: kBlackColor2,
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyText(
                paddingLeft: 15.0,
                text: 'Price',
                size: 16,
                weight: FontWeight.w500,
                color: kBlackColor2 ,
              ),
              RangeSlider(
                onChanged: (value) {
                  setState(() {
                    values = value;
                  });
                },
                min: 1,
                max: 100,
                activeColor: kSecondaryColor,
                inactiveColor: kSecondaryColor.withOpacity(0.1),
                values: values,
                labels: labels,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget filterTypes(String text, int index) {
    return MyButton(
      text: text,
      height: 33,
      textSize: 12,
      radius: 10.0,
      textColor: currentIndex == index ? kPrimaryColor : kBlackColor3,
      btnBgColor: currentIndex == index ? kSecondaryColor : kLightGreyColor4,
      fontFamily: 'Mulish',
      onPressed: () {
        setState(() {
          currentIndex = index;
        });
      },
    );
  }
}
