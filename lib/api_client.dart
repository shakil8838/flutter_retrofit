import 'package:dio/dio.dart';
import 'package:flutter_retrofit/question_data_model.dart';
import 'package:retrofit/http.dart';

import 'api_endpoints.dart';

part "api_client.g.dart";

@RestApi(baseUrl: BASE_URL)
abstract class APIClient {
  factory APIClient(Dio dio, {String baseUrl}) = _APIClient;

  @GET(QUESTION_API)
  Future<QuestionDataModel> getQuestions();
}
