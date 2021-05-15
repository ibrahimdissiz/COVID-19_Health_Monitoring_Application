import 'package:flutter/material.dart';

class HealthcareperSc extends StatefulWidget {
  @override
  _HealthcareperScState createState() => _HealthcareperScState();
}

class _HealthcareperScState extends State<HealthcareperSc> {
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
                                    onPressed: () {},
                                    child: Text("Medical Records",
                                        style: TextStyle(fontSize: 30))))),
                      ]),
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
                                    child: Text("Patient Locations",
                                        style: TextStyle(fontSize: 30))))),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: Container(
                                height: 50,
                                margin: EdgeInsets.only(
                                    left: 10.0, top: 250.0, right: 10.0),
                                child: RaisedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, "/");
                                    },
                                    child: Text("LOGOUT",
                                        style: TextStyle(fontSize: 30))))),
                      ])
                ],
              ),
            )),
      ),
    );
  }
}
