import 'package:alwadi_medical_center/models/medical_model.dart';
import 'package:alwadi_medical_center/screens/service_screen.dart';
import 'package:flutter/material.dart';

import '../screens/details_screen.dart';

class MedicalTile extends StatefulWidget {
  MedicalTile(this.medicalModel,{Key? key}) : super(key: key);
  MedicalModel medicalModel;

  @override
  State<MedicalTile> createState() => _MedicalTileState();
}

class _MedicalTileState extends State<MedicalTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> ServiceScreen(widget.medicalModel),)
        );
      },
      child: Container(
            padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(bottom: 20, right: 20,left: 20),
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(widget.medicalModel.imageUrl!)
            ),
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,

      ),
        child:Center(
            child:Text(widget.medicalModel.title!,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.deepPurple
              ),)
        )
      ) );
  }
}
