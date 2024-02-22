import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}
final dio = Dio();

void getHttp() async {
  final response = await dio.get('https://newsapi.org/v2/everything?q=Apple&from=2024-02-21&sortBy=popularity&apiKey=API_KEY');
  print(response);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        debugShowCheckedModeBanner:false,
        home: home_page(),
    );
  }
}
