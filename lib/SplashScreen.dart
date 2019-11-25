import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'adminselection_page.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splashscreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Hero(
                        tag:'logo',
                        child: Image.asset('images/gbulogo.jpg')),
                  ),
                  SizedBox(
                   height: 30,  
                  ),
                  Flexible(
                    child: TypewriterAnimatedTextKit(
                      text: ['GBU LEAVE SANCTION APP']
                      ,
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25
                      ),
                    ),
                  )

                ],
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              
              children: <Widget>[
                Expanded(
                  child: FlatButton(

                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),


                    padding: EdgeInsets.all(20),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);

                    },
                    child: Text('TEACHER LOGIN',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
                Expanded(
                  child: FlatButton(

                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),


                    padding: EdgeInsets.all(20),
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.pushNamed(context, Adminselectnow.id);

                    },
                    child: Text('DEAN/HOD LOGIN',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),


              ],
            ),
          ],  
        ),
      ),
    );

  }
}
