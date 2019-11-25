import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'package:firebase_auth/firebase_auth.dart';

bool remember_me = true;
bool showspinner = false;

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;

  String email;
  String password;
  @override


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ModalProgressHUD(
          inAsyncCall: showspinner,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: Hero(
                        tag: 'logo',
                        child: Image.asset('images/gbulogo.jpg'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                      child: TextField(
                        onChanged: (value) {
                          email = value;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            hintText: 'Enter Username',
                            prefixIcon: Icon(
                              Icons.person_outline,
                              size: 30,
                              color: Colors.blue,
                            )),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: TextField(
                          onChanged: (value) {
                            password = value;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            hintText: 'Enter Password',
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              size: 30,
                              color: Colors.blue,
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 350,
                      child: Divider(
                        color: Colors.black,
                        height: 15,
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              new Checkbox(
                                  value: remember_me,
                                  onChanged: (bool value) {
                                    setState(() {
                                      remember_me = value;
                                    });
                                  }),
                              new Text(
                                '  Remember Me',
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          RaisedButton(
                            child: Text(
                              '  Forgot Password?',
                              style: TextStyle(fontSize: 10),
                            ),
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                padding: EdgeInsets.all(20),
                color: Colors.green,
                onPressed: () async {
                  setState(() {
                    showspinner = true;
                  });

                  try {
                    final loginuser = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (loginuser != null) {
                      Navigator.pushNamed(context, HomeScreen.id);
                    }
                  } catch (e) {
                    print(e);
                  }
                  setState(() {
                    showspinner = false;
                  });
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
