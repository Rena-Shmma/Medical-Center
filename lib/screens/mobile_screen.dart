import 'package:alwadi_medical_center/models/medical_model.dart';
import 'package:alwadi_medical_center/screens/home_screen.dart';
import 'package:alwadi_medical_center/screens/service_screen.dart';
import 'package:flutter/material.dart';

import '../utils/global.dart';

class MobileScreen extends StatefulWidget {
  MobileScreen(this.medicalList,{Key? key}) : super(key: key);
  MedicalModel medicalList;

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  int page=0;
  late  PageController pageController;

  MedicalModel get medicalList => medicalList;

  @override
  void initState() {
    super.initState();
    pageController=PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page){
    pageController.jumpToPage(page);
  }

  void onPageChanged(int p){
    page=p;
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens=[
      HomeScreen(),
      ServiceScreen(medicalList),
    ];
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
      body:PageView(
        children: [
          Center(child: Text("person"),),
          // ServiceScreen(medicalList);
        ServiceScreen(widget.medicalList),
          Center(child: Text("doctors"),),
          Center(child: Text("home"),),


        ],
        controller: pageController,
       onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),

       bottomNavigationBar: BottomNavigationBar(
         backgroundColor: Colors.white,
           items: [
                   BottomNavigationBarItem(icon: Icon(Icons.person,
                       color: page==0?Colors.deepPurple:Colors.white54),
                     label: "ملفي", backgroundColor: Colors.deepPurple, ),
                   BottomNavigationBarItem(icon: Icon(Icons.medical_services_outlined,
                       color: page==1?Colors.deepPurple:Colors.white54
                   ), label: "أطباؤنا" , backgroundColor: Colors.deepPurple),
                   BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,
                       color: page==2?Colors.deepPurple:Colors.white54
                   ), label: "خدماتنا", backgroundColor: Colors.deepPurple),
                   BottomNavigationBarItem(icon: Icon(Icons.home,
                       color: page==3?Colors.deepPurple:Colors.white54
                   ), label: "الرئيسية", backgroundColor: Colors.deepPurple,  ),
                   ],
         onTap: navigationTapped,
       )
       ,
    );
  }
}
