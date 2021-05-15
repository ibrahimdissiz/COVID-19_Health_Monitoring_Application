import 'package:flutter/material.dart';

class PatientSc extends StatefulWidget {
  @override
  _PatientScState createState() => _PatientScState();
}

class _PatientScState extends State<PatientSc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              elevation: 5,
              toolbarHeight: 100,
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              title: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/images/loginpageicon.png',
                    height: 60,
                  ),
                  Text(
                    "COVID-19 Health \nMonitoring Application",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    textAlign: TextAlign.center,
                  )
                ],
              )),
          body: Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Container(
                            height: 100,
                            margin: EdgeInsets.only(
                                left: 10.0, top: 35.0, right: 10.0),
                            child: RaisedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, "/patientscmyprofile");

                                },
                                child: Text("My Profile",
                                    style: TextStyle(fontSize: 30))))),
                    Expanded(
                        flex: 1,
                        child: Container(
                            height: 100,
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 35.0,
                              right: 10.0,
                            ),
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text("Diseases",
                                  style: TextStyle(fontSize: 30)),
                            ))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Container(
                            height: 100,
                            margin: EdgeInsets.only(
                                left: 10.0, top: 35.0, right: 10.0),
                            child: RaisedButton(
                                onPressed: () {},
                                child: Text("Symptoms",
                                    style: TextStyle(fontSize: 30))))),
                    Expanded(
                        flex: 1,
                        child: Container(
                            height: 100,
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 35.0,
                              right: 10.0,
                            ),
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text("Location",
                                  style: TextStyle(fontSize: 30)),
                            ))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Container(
                            height: 100,
                            margin: EdgeInsets.only(
                                left: 10.0, top: 35.0, right: 10.0),
                            child: RaisedButton(
                                onPressed: () {},
                                child: Text("Test Results",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 30,))))),
                    Expanded(
                        flex: 1,
                        child: Container(
                            height: 100,
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 35.0,
                              right: 10.0,
                            ),
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text("Vaccine",
                                  style: TextStyle(fontSize: 30)),
                            ))),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Container(
                              height: 50,
                              margin: EdgeInsets.only(
                                  left: 10.0, top: 150.0, right: 10.0),
                              child: RaisedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/");
                                  },
                                  child: Text("LOGOUT",
                                      style: TextStyle(fontSize: 30))))),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
