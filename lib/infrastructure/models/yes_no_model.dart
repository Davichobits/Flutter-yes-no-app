import 'package:yes_no_app/domain/entities/message.dart';

class YessNoModel {
  String answer;
  bool forced;
  String image;

  YessNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YessNoModel.fromJsonMap(Map<String, dynamic> json) => YessNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Message toMessageEntity() => Message(
      text: answer == 'yes' ? 'Si' : 'No',
      fromWho: FromWho.hers,
      imageUrl: image);
}
