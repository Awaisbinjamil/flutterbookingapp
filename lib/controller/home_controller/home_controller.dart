import 'package:get/get.dart';
import 'package:rchive/model/post_cards_model/post_cards_model.dart';

class HomeController extends GetxController {
  List<PostCardsModel> investmentPicks = [
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
  List<PostCardsModel> luxListing = [
    PostCardsModel(
      propertyImage: 'assets/images/unsplash_Hh18POSx5qk.png',
      name: '523 Brentho, smithfielderd NSW',
      price: '2,200,000',
    ),
    PostCardsModel(
      propertyImage: 'assets/images/unsplash_IYfp2Ixe9nM.png',
      name: '456 Smith St, smithfielderd NSW',
      price: '2,400,000',
    ),
  ];
  List<PostCardsModel> vipAccess = [
    PostCardsModel(
      propertyImage: 'assets/images/unsplash_yFV39g6AZ5o.png',
      name: '199 Potthsm, smithfielderd NSW',
      price: '1,000,000',
    ),
    PostCardsModel(
      propertyImage: 'assets/images/unsplash_rChFUMwAe7E.png',
      name: '123 Smith St, smithfiel NSW',
      price: '1,200,000',
    ),
  ];

  List<PostCardsModel> get getInvestmentPicks => investmentPicks;

  List<PostCardsModel> get getLuxListing => luxListing;

  List<PostCardsModel> get getVipAccess => vipAccess;
}
