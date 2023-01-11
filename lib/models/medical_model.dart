import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class MedicalModel with ChangeNotifier{
  String title;
  String imageUrl;

  MedicalModel({
    required this.title,
   required this.imageUrl
});

  static List<MedicalModel> medicalList=[
    MedicalModel(title: 'العيادة الجلدية', imageUrl: 'http://www.attadawe.com/wp-content/uploads/2018/02/02-1.jpg'),
    MedicalModel(title: 'العيادة الهضمية', imageUrl: 'https://www.avogel.co.uk/images2020/March/stomach-stress-1200.jpg'),
    MedicalModel(title: 'امراض الغدد وداء السكري', imageUrl: 'https://static.webteb.net/images/content/tbl_articles_article_16570_816.jpg'),
  ];

  static List<MedicalModel> generateServices() {
    return [
      MedicalModel(title: 'العيادة الجلدية',
          imageUrl: 'http://www.attadawe.com/wp-content/uploads/2018/02/02-1.jpg'),
      MedicalModel(title: 'العيادة الهضمية',
          imageUrl: 'https://www.avogel.co.uk/images2020/March/stomach-stress-1200.jpg'),
      MedicalModel(title: 'امراض الغدد وداء السكري',
          imageUrl: 'https://static.webteb.net/images/content/tbl_articles_article_16570_816.jpg'),

    ];

  }
}