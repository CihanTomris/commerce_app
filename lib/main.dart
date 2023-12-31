import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player_app/screens/home_page.dart';
import 'package:video_player_app/screens/my_content_page.dart';
import 'package:video_player_app/screens/my_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const MyHomePage()),
        GetPage(name: "/detail", page: () => DetailPage()),
      ],
    );
  }
}