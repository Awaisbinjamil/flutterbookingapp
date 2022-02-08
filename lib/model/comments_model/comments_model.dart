class CommentsModel {
  // ignore: prefer_typing_uninitialized_variables
  var name, time, msg, mention;
  bool? haveMention;

  CommentsModel({
    this.name,
    this.time,
    this.msg,
    this.haveMention = false,
    this.mention,
  });
}
