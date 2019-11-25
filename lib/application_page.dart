import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'HomeScreen.dart';

class Applicationpage extends StatefulWidget {
  static const String id = 'apllication_page';

  @override
  _ApplicationpageState createState() => _ApplicationpageState();
}

class _ApplicationpageState extends State<Applicationpage> {
  var fromdate = 'Pick a date!';
  var todate = 'Pick a date!';
  var dropdown = ['DEAN', 'HOD', 'DEAN & HOD'];
  var dropdownnew = [
    'School of ICT',
    'School of L & J',
    'School of BIOTECH',
    'School of V & S',
    'School of MANAGEMENT'
  ];
  var leavelist = [
 
    'Out of Station',
    'Sanctioned Leave',
    'Urgent Need',
    'Personal'
  ];
  var firstleavetype = 'Out of Station';
  var currentdropdown = 'DEAN';
  var currentdropdownnew = 'School of ICT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('GLSA'),
      ),
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  border: Border.all(color: Colors.teal, width: 1),
                  color: Colors.white),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Center(
                        child: Text(
                      'APPLICATION SECTION',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                    color: Colors.teal,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('To :'),
                        SizedBox(
                          width: 60,
                        ),
                        DropdownButton<String>(
                          value: currentdropdown,
                          items: dropdown.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String value) {
                            setState(() {
                              currentdropdown = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 2),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('SCHOOL :'),
                        DropdownButton<String>(
                          value: currentdropdownnew,
                          items: dropdownnew.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String value) {
                            setState(() {
                              currentdropdownnew = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 2),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('TYPE OF LEAVE :'),
                        DropdownButton<String>(
                          value: firstleavetype,
                          items: leavelist.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String value) {
                            setState(() {
                              firstleavetype = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 2),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('LEAVE FROM:'),
                        FlatButton(
                            onPressed: () {
                              DatePicker.showDatePicker(context,
                                  showTitleActions: true,
                                  minTime: DateTime(2018, 13, 8),
                                  maxTime: DateTime(2025, 30, 12),
                                  onChanged: (date) {
                                print('change $date');
                              }, onConfirm: (date) {
                                print('confirm $date');
                                setState(() {
                                  fromdate = date.toString();
                                });
                              },
                                  currentTime: DateTime.now(),
                                  locale: LocaleType.en);
                            },
                            child: Text(
                              fromdate,
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 2),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('LEAVE TILL:'),
                        FlatButton(
                            onPressed: () {
                              DatePicker.showDatePicker(context,
                                  showTitleActions: true,
                                  minTime: DateTime(2018, 13, 8),
                                  maxTime: DateTime(2025, 30, 12),
                                  onChanged: (date) {
                                print('change $date');
                              }, onConfirm: (date) {
                                print('confirm $date');
                                setState(() {
                                  todate = date.toString();
                                });
                              },
                                  currentTime: DateTime.now(),
                                  locale: LocaleType.en);
                            },
                            child: Text(
                              todate,
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 2),
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('ADDITIONAL DETAILS  :'),

                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                hintText: 'Enter Additional Details !')),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0)),
            padding: EdgeInsets.all(20),
            color: Colors.green,
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.id);
            },
            child: Text(
              'APPLY FOR LEAVE',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
