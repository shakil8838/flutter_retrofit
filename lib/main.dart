import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_retrofit/api_client.dart';
import 'package:flutter_retrofit/question_data_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    _builderBody(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Default title"),
        ),
        body: Center(
          child: _builderBody(context),
        ),
      ),
    );
  }

  FutureBuilder<QuestionDataModel> _builderBody(BuildContext context) {
    final client = APIClient(Dio(BaseOptions(contentType: 'application/json')));
    return FutureBuilder<QuestionDataModel>(
        future: client.getQuestions(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var theValue = snapshot.data?.subjectName.toString();
            return Text(theValue!);
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
