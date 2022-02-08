import 'package:get/get.dart';
import 'package:rchive/model/investment_portal_model/investment_portal_model.dart';
import 'package:rchive/model/post_cards_model/post_cards_model.dart';

class InvestmentPortalController extends GetxController {
  List<PostCardsModel> archive = [
    PostCardsModel(
      propertyImage: 'assets/images/unsplash_z9fFOzL5L_Y.png',
      name: '199 Potthsm, smithfielderd NSW',
      price: '1,000,000',
    ),
    PostCardsModel(
      propertyImage: 'assets/images/unsplash_aren8nutd1Q.png',
      name: '123 Smith St, smithfiel NSW',
      price: '1,200,000',
    ),
  ];

  List<PostCardsModel> get getArchive => archive;

  List<InvestmentPortalModel> collection = [
    InvestmentPortalModel(
      collectionName: 'Collections',
      collectionImage1: 'assets/images/Group 6500.png',
      collectionImage2: 'assets/images/Group 6500.png',
    ),
    InvestmentPortalModel(
      collectionName: 'Future Homes',
      collectionImage1: 'assets/images/Group 6500.png',
      collectionImage2: 'assets/images/Group 6500.png',
    ),
    InvestmentPortalModel(
      collectionName: 'Collections',
      collectionImage1: 'assets/images/Group 6500.png',
      collectionImage2: 'assets/images/Group 6500.png',
    ), InvestmentPortalModel(
      collectionName: 'Collections',
      collectionImage1: 'assets/images/Group 6500.png',
      collectionImage2: 'assets/images/Group 6500.png',
    ),
    InvestmentPortalModel(
      collectionName: 'Future Homes',
      collectionImage1: 'assets/images/Group 6500.png',
      collectionImage2: 'assets/images/Group 6500.png',
    ),
    InvestmentPortalModel(
      collectionName: 'Collections',
      collectionImage1: 'assets/images/Group 6500.png',
      collectionImage2: 'assets/images/Group 6500.png',
    ),
  ];

  List<InvestmentPortalModel> get getCollections => collection;
}
