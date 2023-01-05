import 'package:flutter/material.dart';
import 'package:flutter_tech_test/ui/login/login_page.dart';
import 'package:get/get.dart';

class FlutterTestApp extends StatelessWidget {
  const FlutterTestApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

