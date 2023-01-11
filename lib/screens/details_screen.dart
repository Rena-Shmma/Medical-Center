import 'package:flutter/material.dart';
import 'package:alwadi_medical_center/models/skin_model.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('تفاصيل:' ,style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),),
          Text(' تفاصيل اكتر' , style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),)
        ],
      ),
    );
  }
}
