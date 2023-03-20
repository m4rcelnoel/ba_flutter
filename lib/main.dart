import 'package:flutter/material.dart';
import 'package:ba_flutter/app.dart';
import 'package:ba_flutter/pages/contact_page.dart';
import 'package:ba_flutter/pages/home_page.dart';
import 'package:ba_flutter/pages/drinks_page.dart';
import 'package:flutter/services.dart';

void main() async{
  runApp(MyBaFlaskApp()); // Starten der App
}

class MyBaFlaskApp extends StatelessWidget {
  const MyBaFlaskApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: MaterialApp( //Verwenden von Material App
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black, //Einstellen des App-Themes
        ),
      debugShowCheckedModeBanner: false,
      routes: { //Definieren der Routen
        '/mainlayout': (context) => MainLayout(),
        '/page1': (context) => HomePage(),
        '/page2': (context) => ContactPage(),
      },
      initialRoute: '/mainlayout', // Start-Route
      )
    );
  }
}