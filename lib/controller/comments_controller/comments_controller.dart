import 'package:get/get.dart';
import 'package:rchive/model/comments_model/comments_model.dart';

class CommentsController extends GetxController {
  List<CommentsModel> comments = [
    CommentsModel(
      name: 'homeowner_44',
      time: '2y ago',
      msg:
          'Real estate agent won’t give a price, didn’t anyone else experience the same thing ',
      mention: '',
    ),
    CommentsModel(
      name: 'the carpet_22',
      time: '2m ago',
      msg: 'I love this place',
      haveMention: true,
      mention: '@sam_t ',
    ),
  ];

  List<CommentsModel> get getComments => comments;
}
