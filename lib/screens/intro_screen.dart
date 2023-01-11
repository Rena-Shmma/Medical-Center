import 'package:alwadi_medical_center/models/medical_model.dart';
import 'package:alwadi_medical_center/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'mobile_screen.dart';

class IntroScreen extends StatefulWidget {

  IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: InkWell(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> HomeScreen(),)
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.favorite, color: Colors.white,size: 150,),
            VerticalDivider( indent: 370,color: Colors.white, width:25,endIndent: 370, ),

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('AL WADI',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 25,
                      ),),
                  const Text('MEDICAL CENTER',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),),
                  Row(
                    children: const [
                      Text("الطبي", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 17,
                      ),),
                      Text(" الوادي ",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),),
                      Text('مركز' , style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 17,
                      ),),

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
