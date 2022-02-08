import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/controller/comments_controller/comments_controller.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/my_text.dart';
import 'package:rchive/view/widget/my_text_field.dart';

class Comments extends StatelessWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CommentsController>(
      init: CommentsController(),
      builder: (logic) {
        return Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  paddingLeft: 15,
                  paddingTop: 10,
                  paddingBottom: 10.0,
                  text: 'Show previous comments(4)',
                  size: 12,
                  weight: FontWeight.w500,
                  color: kSecondaryColor,
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    itemCount: logic.getComments.length,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      var data = logic.getComments[index];
                      return CommentsTiles(
                        name: data.name,
                        time: data.time,
                        msg: data.msg,
                        haveMention: data.haveMention,
                        mention: data.mention,
                      );
                    },
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                color: kPrimaryColor,
                child: Center(
                  child: ListTile(
                    title: MyTextField(
                      hintTextColor: kBlackColor2,
                      hintText: 'Type your comments here',
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/send.png',
                          height: 45,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

// ignore: must_be_immutable
class CommentsTiles extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var name, time, msg, mention;
  bool? haveMention;

  CommentsTiles({Key? key,
    this.name,
    this.time,
    this.msg,
    this.haveMention = false,
    this.mention,
  }) : super(key: key);

  @override
  State<CommentsTiles> createState() => _CommentsTilesState();
}

class _CommentsTilesState extends State<CommentsTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: kLightGreyColor4.withOpacity(0.64),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: '${widget.name}',
                size: 12,
                weight: FontWeight.w700,
                color: kBlackColor2,
              ),
              MyText(
                text: '${widget.time}',
                size: 12,
                color: const Color(0xff333333),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 5),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff333333),
                ),
                children: [
                  widget.mention == false
                      ? const TextSpan()
                      : TextSpan(
                          text: widget.mention ?? '',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                  TextSpan(
                    text: '${widget.msg}',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
