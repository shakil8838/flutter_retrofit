// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionDataModel _$QuestionDataModelFromJson(Map<String, dynamic> json) =>
    QuestionDataModel(
      subjectName: json['subject_name'] as String?,
      subjectId: json['subject_id'] as int?,
      questions: (json['subject_chapter'] as List<dynamic>?)
          ?.map((e) => QuestionsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuestionDataModelToJson(QuestionDataModel instance) =>
    <String, dynamic>{
      'subject_name': instance.subjectName,
      'subject_id': instance.subjectId,
      'subject_chapter': instance.questions,
    };

QuestionsModel _$QuestionsModelFromJson(Map<String, dynamic> json) =>
    QuestionsModel(
      chapterName: json['chapter_name'] as String?,
      chapterId: json['chapter_id'] as int?,
      chapterImage: json['chapter_image'] as String?,
      chapterCreativeQuestion: json['chapter_creative_question_count'] as int?,
      chapterObjectiveQuestion:
          json['chapter_objective_question_count'] as int?,
    );

Map<String, dynamic> _$QuestionsModelToJson(QuestionsModel instance) =>
    <String, dynamic>{
      'chapter_name': instance.chapterName,
      'chapter_id': instance.chapterId,
      'chapter_image': instance.chapterImage,
      'chapter_creative_question_count': instance.chapterCreativeQuestion,
      'chapter_objective_question_count': instance.chapterObjectiveQuestion,
    };
