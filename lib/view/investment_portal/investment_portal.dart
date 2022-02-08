import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/controller/investment_portal_controller/investment_portal_controller.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/filter/filter_buy_rent_sold.dart';
import 'package:rchive/view/investment_portal/add_collection/collection_type.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';
import 'package:rchive/view/widget/post_cards.dart';

class InvestmentPortal extends StatelessWidget {
  const InvestmentPortal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InvestmentPortalController>(
      init: InvestmentPortalController(),
      builder: (logic) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: MyText(
              text: 'Investment portal',
              size: 18,
              color: kYellowColor,
              weight: FontWeight.w700,
            ),
          ),
          body: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      size: 16,
                      weight: FontWeight.w600,
                      color: kBlackColor,
                      text: 'Rchive properties',
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => Get.to(() => FilterBuyRentSold()),
                          child: Image.asset(
                            'assets/images/IC_Filter.png',
                            height: 24,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
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
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 182,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: logic.getArchive.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  itemBuilder: (context, index) {
                    var data = logic.getArchive[index];
                    return PostCards(
                      propertyImage: data.propertyImage,
                      name: data.name,
                      price: data.price,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: MyText(
                  size: 16,
                  weight: FontWeight.w600,
                  color: kBlackColor,
                  text: 'Collections',
                ),
                trailing: GestureDetector(
                  onTap: () => Get.to(() => const CollectionType()),
                  child: Image.asset(
                    'assets/images/add.png',
                    height: 16,
                  ),
                ),
              ),
              ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemCount: logic.getCollections.length,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  var data = logic.getCollections[index];
                  return InvestmentPortalPostCards(
                    collectionName: data.collectionName,
                    collectionImage1: data.collectionImage1,
                    collectionImage2: data.collectionImage2,
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }
}

// ignore: must_be_immutable
class InvestmentPortalPostCards extends StatelessWidget {
  InvestmentPortalPostCards({
    Key? key,
    this.collectionImage1,
    this.collectionImage2,
    this.collectionName,
  }) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  var collectionImage1, collectionImage2, collectionName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: '$collectionName',
            size: 14,
            color: kGreyColor,
            weight: FontWeight.w500,
            paddingBottom: 15.0,
          ),
          SizedBox(
            height: 133,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Image.asset(
                    '$collectionImage1',
                    width: Get.width,
                    height: Get.height,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  flex: 5,
                  child: Image.asset(
                    '$collectionImage2',
                    width: Get.width,
                    height: Get.height,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
