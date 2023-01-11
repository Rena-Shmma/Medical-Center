import 'package:flutter/material.dart';

import '../models/medical_model.dart';

class ServiceScreen extends StatefulWidget {
  ServiceScreen(this.medicalList,{Key? key}) : super(key: key);
  MedicalModel medicalList;

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  List<Widget> listWidget(){
    return MedicalModel.generateServices().map((e) => Container(
      padding: EdgeInsets.all(15),
      child: ElevatedButton(
        child: Row(
          children: [
            TextButton( onPressed: (){},
                child: Text(e.title!),)
          ],
        ) ,
        style: ButtonStyle(
         // textStyle: TextStyle(color: Colors.),
            foregroundColor:MaterialStatePropertyAll<Color>(Colors.deepPurple) ,
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.white54),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                )
            )
        ),
        onPressed: (){},
      ),

    )).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('services'),
      ),
      body:Column(
        children:[
          SizedBox(height: 70,
            child:ListView(
              scrollDirection: Axis.horizontal,
              children: listWidget(),

            ) ,),
          SingleChildScrollView(

          )
        ]
      ) ,
    );

  }
}


