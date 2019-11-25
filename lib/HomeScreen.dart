import 'package:flutter/material.dart';
import 'application_page.dart';

import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      child: DefaultTabController(
        length: 2,
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
              bottom: TabBar(tabs: [
                Tab(
                  text: 'USER HOME',
                ),
                Tab(
                  text: 'USER ACCOUNT',
                ),
              ]),
            ),
            body: TabBarView(children: <Widget>[
              Mainhome(),
              Useraccount(),
            ])),
      ),
    );
  }
}

class Mainhome extends StatefulWidget {
  @override
  _MainhomeState createState() => _MainhomeState();
}

class _MainhomeState extends State<Mainhome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              border: Border.all(color: Colors.teal, width: 1),
              color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: Center(
                    child: Text(
                  'NOTICE SECTION',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
                color: Colors.teal,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 50, 10),
                    height: 40,
                    child: Image.asset(
                      'images/doctor.png',
                    ),
                  ),
                  Text('No New updates at the moment!')
                ],
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
     
          children: <Widget>[
            Container(

              padding: EdgeInsets.only(bottom: 20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  border: Border.all(color: Colors.teal, width: 1),
                  color: Colors.white),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(4),
                    child: Text('Sanctioned Leave'),
                    color: Colors.teal,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text('14',style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  border: Border.all(color: Colors.teal, width: 1),
                  color: Colors.white),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(4),
                    child: Text('Used Leave'),
                    color: Colors.teal,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text('2',style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  border: Border.all(color: Colors.teal, width: 1),
                  color: Colors.white),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(4),
                    child: Text('Remaining'),
                    color: Colors.teal,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text('12',style: TextStyle(fontSize: 20),)
                ],
              ),
            )
          ],
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.only(bottom: 20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                border: Border.all(color: Colors.teal, width: 1),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: Center(
                      child: Text(
                    'APPLICATION STATUS',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                  color: Colors.teal,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('SL. '),
                        SizedBox(
                          height: 10,
                        ),
                        Text('1 '),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('LEAVE ID'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('21 '),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('DATE'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('12-06-19 '),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('STATUS'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'ACCEPTED ',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          padding: EdgeInsets.all(20),
          color: Colors.green,
          onPressed: () {
            Navigator.pushNamed(context, Applicationpage.id);
          },
          child: Text(
            'SUBMIT A COMPLAINT',
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          padding: EdgeInsets.all(20),
          color: Colors.teal,
          onPressed: () {
            Navigator.pushNamed(context, Applicationpage.id);
          },
          child: Text(
            'APPLY FOR LEAVE',
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class Useraccount extends StatefulWidget {
  @override
  _UseraccountState createState() => _UseraccountState();
}

class _UseraccountState extends State<Useraccount> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Center(
                        child: Image.asset(
                  'images/doctor.png',
                ))),
                SizedBox(
                  height: 20,
                ),
                Text('NAME :Rohit Raj'),
                Text(
                  'SCHOOL : ICT',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text('POST : PROF. -CYBER SECURITY'),
                Text('MOBILE : 9471170057'),
                Text('EMAIL : developer@app.com'),
              ],
            ),
          ),
        ),
        SizedBox(
          child: Divider(
            height: 0,
            color: Colors.black,
          ),
        ),
        FlatButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          padding: EdgeInsets.all(20),
          color: Colors.red,
          child: Text(
            'UPDATE PROFILE',
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          onPressed: () {},
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
