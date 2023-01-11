import 'package:alwadi_medical_center/models/medical_model.dart';
import 'package:alwadi_medical_center/screens/home_screen.dart';
import 'package:alwadi_medical_center/screens/intro_screen.dart';
import 'package:alwadi_medical_center/screens/mobile_screen.dart';
import 'package:alwadi_medical_center/screens/service_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MedicalModel(title: 'hello',imageUrl: 'http://www.attadawe.com/wp-content/uploads/2018/02/02-1.jpg'),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
      ),
      home: IntroScreen(),
    )  );
  }
}
