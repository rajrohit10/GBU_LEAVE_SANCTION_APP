import 'package:flutter/material.dart';
import 'amin_loginpage.dart';

class Adminselectnow extends StatefulWidget {
  static const String id ='adminselect';
  @override
  _AdminselectnowState createState() => _AdminselectnowState();
}

class _AdminselectnowState extends State<Adminselectnow> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              SizedBox(
                height: 20,
              ),

              Center(child: Text('SELECT YOUR LOGIN CHANNEL',style: TextStyle(fontSize: 20),)),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.all(10),

                    color: Colors.amber,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.pushNamed(context, AdminLoginMain.id);
                      },
                      child: Text('HOD LOGIN'),
                    )
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.blue,
                    child:  FlatButton(
                      onPressed: (){
                        Navigator.pushNamed(context, AdminLoginMain.id);
                      },
                      child: Text('DEAN LOGIN'),
                    )
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      margin: EdgeInsets.all(10),
                    color: Colors.green,
                    child:  FlatButton(
                      onPressed: (){
                        Navigator.pushNamed(context, AdminLoginMain.id);
                      },
                      child: Text('COMPLAINT ADMIN LOGIN'),
                    )
                  ),
                ),
              )
            ],
          )
        ),
      )
    );
  }
}
