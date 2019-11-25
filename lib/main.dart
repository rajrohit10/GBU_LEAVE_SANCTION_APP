import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'application_page.dart';
import 'amin_loginpage.dart';
import 'adminhomescreen.dart';



import 'LoginScreen.dart';
import 'HomeScreen.dart';
import 'adminselection_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
theme: ThemeData(fontFamily: 'Raleway',backgroundColor: Colors.white),
      initialRoute:SplashScreen.id ,

      routes: {
        SplashScreen.id :(context)=>SplashScreen(),
        LoginScreen.id :(context)=>LoginScreen(),
        Applicationpage.id: (context)=>Applicationpage(),
        AdminLoginMain.id:(context)=>AdminLoginMain(),
        AdminHome.id:(context)=>AdminHome(),


        HomeScreen.id:(context)=>HomeScreen(),
        Adminselectnow.id:(context)=>Adminselectnow(),



      },



    );
  }
}
