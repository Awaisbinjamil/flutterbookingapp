import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';

class Compare extends StatefulWidget {
  const Compare({Key? key}) : super(key: key);

  @override
  State<Compare> createState() => _CompareState();
}

class _CompareState extends State<Compare> {
  bool? isLandScape = false;

  void landScapeMode(BuildContext context) {
    setState(() {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      isLandScape = true;
    });
  }

  returnToPortraitMode(BuildContext context) {
    setState(() {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      isLandScape = false;
      Get.back();
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => returnToPortraitMode(context),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () => returnToPortraitMode(context),
                    child: Image.asset(
                      'assets/images/back.png',
                      height: 18,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: kBlackColor,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: 'Collection: ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'New Home Comparison',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Center(
              child: Image.asset(
                'assets/images/IC_Filter.png',
                height: 24,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Center(
              child: Container(
                height: 25,
                width: 62,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: kYellowColor,
                    width: 1.0,
                  ),
                ),
                child: Center(
                  child: MyText(
                    text: '+Add',
                    size: 14,
                    color: kBlackColor2,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Center(
              child: SizedBox(
                width: 72,
                child: MyButton(
                  text: 'Save',
                  textSize: 14,
                  weight: FontWeight.w500,
                  textColor: kPrimaryColor,
                  btnBgColor: kYellowColor,
                  height: 25,
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
        body: Stack(
          children: [
            isLandScape == false
                ? Center(
                    child: MyText(
                      text: "Please turn your device in to landscape mode",
                      size: 16,
                    ),
                  )
                : ListView(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(10),
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          PropertyWidget(
                            img: 'assets/images/unsplash_z9fFOzL5L_Y.png',
                            address: '123 Smith Street',
                            price: '1,200,000',
                            bedRooms: '4',
                            beds: '4',
                            garage: '1',
                            landSize: '100 x 100',
                            buildingSize: '20 x 20',
                            internalFeatures: 'Nil',
                            externalFeatures: 'Nil',
                            cooling: 'Yes',
                            heating: 'Yes',
                            indoorEnt: 'Yes',
                            outdoorEnt: 'Yes',
                            environmental: 'Yes',
                            security: 'Yes',
                            strata: 'Yes',
                            councilRates: 'Yes',
                            ensuites: 'Yes',
                            livingArea: 'Yes',
                            openCarSpace: 'No',
                            roof: 'Yes',
                            blinds: 'Yes',
                            cookTop: 'No',
                            oven: 'No',
                            dishWasher: 'No',
                            drying: 'Yes',
                          ),
                          PropertyWidget(
                            img: 'assets/images/unsplash_yFV39g6AZ5o.png',
                            address: '123 Smith Street',
                            price: '1,200,000',
                            bedRooms: '4',
                            beds: '4',
                            garage: '1',
                            landSize: '100 x 100',
                            buildingSize: '20 x 20',
                            internalFeatures: 'Nil',
                            externalFeatures: 'Nil',
                            cooling: 'Yes',
                            heating: 'Yes',
                            indoorEnt: 'Yes',
                            outdoorEnt: 'Yes',
                            environmental: 'Yes',
                            security: 'Yes',
                            strata: 'Yes',
                            councilRates: 'Yes',
                            ensuites: 'Yes',
                            livingArea: 'Yes',
                            openCarSpace: 'No',
                            roof: 'Yes',
                            blinds: 'Yes',
                            cookTop: 'No',
                            oven: 'No',
                            dishWasher: 'No',
                            drying: 'Yes',
                          ),
                          PropertyWidget(
                            img: 'assets/images/unsplash_z9fFOzL5L_Y.png',
                            address: '123 Smith Street',
                            price: '1,200,000',
                            bedRooms: '4',
                            beds: '4',
                            garage: '1',
                            landSize: '100 x 100',
                            buildingSize: '20 x 20',
                            internalFeatures: 'Nil',
                            externalFeatures: 'Nil',
                            cooling: 'Yes',
                            heating: 'Yes',
                            indoorEnt: 'Yes',
                            outdoorEnt: 'Yes',
                            environmental: 'Yes',
                            security: 'Yes',
                            strata: 'Yes',
                            councilRates: 'Yes',
                            ensuites: 'Yes',
                            livingArea: 'Yes',
                            openCarSpace: 'No',
                            roof: 'Yes',
                            blinds: 'Yes',
                            cookTop: 'No',
                            oven: 'No',
                            dishWasher: 'No',
                            drying: 'Yes',
                          ),
                          PropertyWidget(
                            img: 'assets/images/unsplash_yFV39g6AZ5o.png',
                            address: '123 Smith Street',
                            price: '1,200,000',
                            bedRooms: '4',
                            beds: '4',
                            garage: '1',
                            landSize: '100 x 100',
                            buildingSize: '20 x 20',
                            internalFeatures: 'Nil',
                            externalFeatures: 'Nil',
                            cooling: 'Yes',
                            heating: 'Yes',
                            indoorEnt: 'Yes',
                            outdoorEnt: 'Yes',
                            environmental: 'Yes',
                            security: 'Yes',
                            strata: 'Yes',
                            councilRates: 'Yes',
                            ensuites: 'Yes',
                            livingArea: 'Yes',
                            openCarSpace: 'No',
                            roof: 'Yes',
                            blinds: 'Yes',
                            cookTop: 'No',
                            oven: 'No',
                            dishWasher: 'No',
                            drying: 'Yes',
                          ),
                        ],
                      ),
                    ],
                  ),
            isLandScape == true
                ? const SizedBox()
                : Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () => landScapeMode(context),
                      child: Card(
                        margin: const EdgeInsets.only(bottom: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        elevation: 5,
                        child: Container(
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: kPrimaryColor,
                            border: Border.all(
                              color: kBlackColor,
                              width: 1.0,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/rotate-smartphone.png',
                                height: 20,
                              ),
                              MyText(
                                paddingLeft: 10,
                                text: 'Rotate',
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PropertyWidget extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var img,
      // ignore: prefer_typing_uninitialized_variables
      address,
      // ignore: prefer_typing_uninitialized_variables
      price,
      // ignore: prefer_typing_uninitialized_variables
      bedRooms,
  // ignore: prefer_typing_uninitialized_variables
      beds,
  // ignore: prefer_typing_uninitialized_variables
      garage,
  // ignore: prefer_typing_uninitialized_variables
      landSize,
  // ignore: prefer_typing_uninitialized_variables
      buildingSize,
  // ignore: prefer_typing_uninitialized_variables
      internalFeatures,
  // ignore: prefer_typing_uninitialized_variables
      externalFeatures,
  // ignore: prefer_typing_uninitialized_variables
      cooling,
  // ignore: prefer_typing_uninitialized_variables
      heating,
  // ignore: prefer_typing_uninitialized_variables
      outdoorEnt,
  // ignore: prefer_typing_uninitialized_variables
      indoorEnt,
  // ignore: prefer_typing_uninitialized_variables
      environmental,
  // ignore: prefer_typing_uninitialized_variables
      security,
  // ignore: prefer_typing_uninitialized_variables
      strata,
  // ignore: prefer_typing_uninitialized_variables
      councilRates,
  // ignore: prefer_typing_uninitialized_variables
      ensuites,
  // ignore: prefer_typing_uninitialized_variables
      livingArea,
  // ignore: prefer_typing_uninitialized_variables
      openCarSpace,
  // ignore: prefer_typing_uninitialized_variables
      roof,
  // ignore: prefer_typing_uninitialized_variables
      blinds,
  // ignore: prefer_typing_uninitialized_variables
      cookTop,
  // ignore: prefer_typing_uninitialized_variables
      oven,
  // ignore: prefer_typing_uninitialized_variables
      dishWasher,
  // ignore: prefer_typing_uninitialized_variables
      drying;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: kPrimaryColor,
          border: Border.all(
            color: kBorderColor,
            width: 1.0,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                '$img',
                height: 120,
                width: Get.width,
                fit: BoxFit.cover,
              ),
            ),
            heading('Address'),
            subHeading(address),
            heading('Price'),
            subHeading('\$$price'),
            heading('Bedrooms'),
            subHeading('$bedRooms'),
            heading('Beds'),
            subHeading('$beds'),
            heading('Garage'),
            subHeading('$garage'),
            heading('Land Size'),
            subHeading('$landSize'),
            heading('Building size'),
            subHeading('$buildingSize'),
            heading('Internal features'),
            subHeading('$internalFeatures'),
            heading('External features'),
            subHeading('$externalFeatures'),
            heading('Cooling'),
            subHeading('$cooling'),
            heading('Heating'),
            subHeading('$heating'),
            heading('Indoor entertainment'),
            subHeading('$indoorEnt'),
            heading('Outdoor entertainment'),
            subHeading('$outdoorEnt'),
            heading('Environmental'),
            subHeading('$environmental'),
            heading('Security'),
            subHeading('$security'),
            heading('Strata | Body  Corporate PQ'),
            subHeading('$strata'),
            heading('Council Rates PQ'),
            subHeading('$councilRates'),
            heading('EnSuites'),
            subHeading('$ensuites'),
            heading('Living Areas'),
            subHeading('$livingArea'),
            heading('Open Car spaces'),
            subHeading('$openCarSpace'),
            heading('Roof'),
            subHeading('$roof'),
            heading('Blinds'),
            subHeading('$blinds'),
            heading('Cook Top'),
            subHeading('$cookTop'),
            heading('Oven'),
            subHeading('$oven'),
            heading('Dishwater'),
            subHeading('$dishWasher'),
            heading('Drying'),
            subHeading('$drying'),
          ],
        ),
      ),
    );
  }

  MyText subHeading(var subHeading) {
    return MyText(
      text: subHeading,
      weight: FontWeight.w500,
      size: 14,
      color: kGreyColor3,
    );
  }

  MyText heading(var heading) {
    return MyText(
      paddingTop: 20,
      paddingBottom: 5,
      text: heading,
      size: 12,
      color: kGreyColor3,
    );
  }

  PropertyWidget({
    Key? key,
    this.img,
    this.address,
    this.price,
    this.bedRooms,
    this.beds,
    this.garage,
    this.landSize,
    this.buildingSize,
    this.internalFeatures,
    this.externalFeatures,
    this.cooling,
    this.heating,
    this.outdoorEnt,
    this.indoorEnt,
    this.environmental,
    this.security,
    this.strata,
    this.councilRates,
    this.ensuites,
    this.livingArea,
    this.openCarSpace,
    this.roof,
    this.blinds,
    this.cookTop,
    this.oven,
    this.dishWasher,
    this.drying,
  }) : super(key: key);
}
