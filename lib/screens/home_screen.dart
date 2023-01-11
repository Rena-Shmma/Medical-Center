import 'package:alwadi_medical_center/models/medical_model.dart';
import 'package:alwadi_medical_center/screens/details_screen.dart';
import 'package:alwadi_medical_center/screens/service_screen.dart';
//import 'package:alwadi_medical_center/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

import '../widgets/medical_card.dart';
import '../widgets/medical_tile.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MedicalModel get medicalList => medicalList;
  List<MedicalModel> x =  MedicalModel.medicalList ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.notifications,  color: Colors.deepPurple,),
          actions: [
            Padding(padding: EdgeInsets.all(5),
              child: Text('مركز الوادي الطبي' , style: TextStyle(
                color: Colors.deepPurple,
              ),),
            ),
            SizedBox(width: 15,),
            IconButton(icon:Icon(Icons.menu),
                onPressed: null)
          ],
        ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
             padding: EdgeInsets.all(20),
              child:  CarouselSlider.builder(
                  itemCount: MedicalModel.medicalList.length,
                  itemBuilder: (ctx, index , id)=>
                      MedicalCard(MedicalModel.medicalList[index]),
                  options: CarouselOptions(
                    aspectRatio: 16/9,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,

                  )),
           ),
            Center(
              child: Text("خدماتنا",
                textAlign:TextAlign.center
                , style: TextStyle(
                color: Colors.deepPurple,

              ),),
            ),
            Column(
              children:
              MedicalModel.medicalList.map((e)=> MedicalTile(e)).toList(),
            )

          ],
        ),
                ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()))
                  ;}, icon: Icon(Icons.person ),
                  ),
              label: "ملفي", backgroundColor: Colors.deepPurple,
             ),

            BottomNavigationBarItem(icon: IconButton(
                          onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  ServiceScreen(medicalList)),
                          );

                          }, icon:Icon(Icons.medical_services_outlined),)

                          , label: "أطباؤنا" , backgroundColor: Colors.deepPurple),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,

            ), label: "خدماتنا", backgroundColor: Colors.deepPurple),
            BottomNavigationBarItem(icon: Icon(Icons.home,

            ), label: "الرئيسية", backgroundColor: Colors.deepPurple,  ),
          ],
         // onTap: navigationTapped,
        )
    //           bottomNavigationBar:
    //            BottomNavigationBar(
    //           elevation: 0.0,
    //           backgroundColor: Colors.white,
    //           selectedItemColor: Colors.deepPurple,unselectedItemColor: Colors.black26,
    //           items: [
    //           BottomNavigationBarItem(icon: Icon(Icons.person), label: "ملفي", backgroundColor: Colors.white, ),
    //           BottomNavigationBarItem(icon: Icon(Icons.medical_services_outlined), label: 'أطباؤنا' , backgroundColor: Colors.white),
    //           BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "خدماتنا", backgroundColor: Colors.white),
    //           BottomNavigationBarItem(icon: Icon(Icons.home ), label: "الرئيسية", backgroundColor: Colors.white, activeIcon: ),
    //           ],
    // ),

      // bottomNavigationBar : new BottomNavigationBar(
      //     currentIndex: index,
      //     onTap: (int index) {
      //       setState(() {
      //         this.index = index;
      //       }
      //       );
      //       _navigateToScreens(index);
      //     },
      //     type: BottomNavigationBarType.fixed,
      //     items: [
      //       new BottomNavigationBarItem(
      //           backgroundColor: Colors.white,
      //           icon: new Image.asset('images/1.0x/icon1.png'),
      //           activeIcon:new Image.asset('images/1.0x/newIcon.png'),
      //           title: new Text("Route1", style: new TextStyle(
      //               color: const Color(0xFF06244e), fontSize: 14.0))),
      //       new BottomNavigationBarItem(
      //           icon: new Image.asset('images/1.0x/icon2.png'),
      //           activeIcon:new Image.asset('images/1.0x/newIcon.png'),
      //           title: new Text("Route2", style: new TextStyle(
      //               color: const Color(0xFF06244e), fontSize: 14.0))),
      //       new BottomNavigationBarItem(
      //           icon: new Image.asset('images/1.0x/icon3.png'),
      //           activeIcon: new Image.asset('images/1.0x/newIcon.png'),
      //           title: new Text("Route3", style: new TextStyle(
      //               color: const Color(0xFF06244e), fontSize: 14.0),)),
      //       new BottomNavigationBarItem(
      //           icon: new Image.asset('images/1.0x/icon4.png'),
      //           activeIcon: new Image.asset('images/1.0x/newIcon.png'),
      //           title: new Text("Route4", style: new TextStyle(
      //               color: const Color(0xFF06244e), fontSize: 14.0),))
      //     ]),
             );
  }
}
