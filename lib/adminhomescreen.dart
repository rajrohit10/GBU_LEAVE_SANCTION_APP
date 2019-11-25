import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AdminHome extends StatefulWidget {
  static const String id = 'AdminHome';

  @override
  _AdminHomeState createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  final _auth = FirebaseAuth.instance;

  FirebaseUser loggedinUser;

  @override
  void initState() {
    super.initState();
    getCurrentuser();
  }

  void getCurrentuser() async {
    final currentuser = await _auth.currentUser();
    try {
      if (currentuser != null) {
        loggedinUser = currentuser;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('GLSA'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 2, 10, 2),
              child: Icon(
                Icons.settings,
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(color: Colors.teal, width: 1),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: Center(
                          child: Text(
                        'LEAVE APPLICATIONS [NEW]',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                      color: Colors.teal,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(

                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          border: Border.all(color: Colors.teal, width: 1),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            
                            width: MediaQuery.of(context).size.width,
                            
                            height: 14,
                            child: Center(
                                child: Text(
                                  'APPLICATION #SOBT-CAW',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                            color: Colors.teal,
                          ),
                          Text('   NAME:    Tester APP'),
                          Text('   LEAVE :    2 Days'),
                          Text('   REASON :      Personal Problems'),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(



                                  height: 35,
                                  child: Center(
                                      child: Text(
                                        'ACCEPT',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                  color: Colors.green,
                                ),
                              ),
                                Expanded(
                                  child: Container(

                              

                                  height: 35,
                                  child: Center(
                                      child: Text(
                                        'REJECT',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                  color: Colors.red,
                              ),
                                ),
                            ],
                          )


                        ],
                      ),

                    ),
                    Container(

                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          border: Border.all(color: Colors.teal, width: 1),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(

                            width: MediaQuery.of(context).size.width,

                            height: 14,
                            child: Center(
                                child: Text(
                                  'APPLICATION #SOBT-CAP',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                            color: Colors.teal,
                          ),
                          Text('   NAME:          DEVELOPER APP'),
                          Text('   LEAVE :        5 Days'),
                          Text('   REASON :    Health Problems'),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(



                                  height: 35,
                                  child: Center(
                                      child: Text(
                                        'ACCEPT',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                  color: Colors.green,
                                ),
                              ),
                              Expanded(
                                child: Container(



                                  height: 35,
                                  child: Center(
                                      child: Text(
                                        'REJECT',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          )


                        ],
                      ),

                    )

                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  border: Border.all(color: Colors.teal, width: 1),
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Center(
                        child: Text(
                          'LEAVE APPLICATIONS [REJECTED]',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                    color: Colors.teal,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text('ALL REJECTED APPLICATIONS WILL SHOW UP HERE'),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  border: Border.all(color: Colors.teal, width: 1),
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    
                    width: MediaQuery.of(context).size.width,

                    height: 40,
                    child: Center(
                        child: Text(
                          'LEAVE APPLICATIONS [ACCEPTED]',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                    color: Colors.teal,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text('ALL ACCEPTED APPLICATIONS WILL SHOW UP HERE'),
                    ),
                  ),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
