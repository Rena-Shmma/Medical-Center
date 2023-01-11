import 'package:alwadi_medical_center/models/medical_model.dart';
import 'package:flutter/material.dart';

import '../screens/details_screen.dart';

class MedicalCard extends StatefulWidget {
  MedicalCard(this.medicalList, {Key? key}) : super(key: key);
  MedicalModel medicalList;

  @override
  State<MedicalCard> createState() => _MedicalCardState();
}

class _MedicalCardState extends State<MedicalCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> DetailsScreen(),)
        );
      },

        child: Stack(
          children: [
            Positioned(child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(widget.medicalList.imageUrl!),
                    )
                ), ),),
            Positioned(
              left: 18,
              child: Text(widget.medicalList.title!,style: TextStyle(
                color: Colors.deepPurple
              ),
              ),)

                      ],
        )


    );
  }
}


