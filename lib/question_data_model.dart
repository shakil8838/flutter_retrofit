import 'package:json_annotation/json_annotation.dart';

part 'question_data_model.g.dart';

@JsonSerializable()
class QuestionDataModel {
  @JsonKey(name: "subject_name")
  String? subjectName;

  @JsonKey(name: "subject_id")
  int? subjectId;

  @JsonKey(name: "subject_chapter")
  List<QuestionsModel>? questions;

  QuestionDataModel(
      {required this.subjectName,
      required this.subjectId,
      required this.questions});

  /*factory QuestionDataModel.fromJson(Map<String, dynamic> json) {
    return QuestionDataModel(
        subjectName: json['subject_name'],
        subjectId: json['subject_id'],
        questions: json['subject_chapter']);
  }*/

  factory QuestionDataModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionDataModelFromJson(json['data']);
  Map<String, dynamic> toJson() => _$QuestionDataModelToJson(this);

  /*Map<String, dynamic> toJson() {
    return {
      'subject_id': subjectId,
      'subject_name': subjectName,
      'subject_chapter': questions
    };
  }*/
}

@JsonSerializable()
class QuestionsModel {
  @JsonKey(name: "chapter_name")
  String? chapterName;

  @JsonKey(name: "chapter_id")
  int? chapterId;

  @JsonKey(name: "chapter_image")
  String? chapterImage;

  @JsonKey(name: "chapter_creative_question_count")
  int? chapterCreativeQuestion;

  @JsonKey(name: "chapter_objective_question_count")
  int? chapterObjectiveQuestion;

  QuestionsModel(
      {required this.chapterName,
      required this.chapterId,
      required this.chapterImage,
      required this.chapterCreativeQuestion,
      required this.chapterObjectiveQuestion});

  factory QuestionsModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionsModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionsModelToJson(this);
}
