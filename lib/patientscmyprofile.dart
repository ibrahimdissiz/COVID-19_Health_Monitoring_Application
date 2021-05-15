import 'package:flutter/material.dart';
import 'package:deneme/login_page.dart';

class patientscmyprofile extends StatefulWidget {
  @override
  _patientscmyprofileState createState() => _patientscmyprofileState();
}

class _patientscmyprofileState extends State<patientscmyprofile> {
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("TC: ",
                    style: TextStyle(
                      color: Colors.black,
                      height: 2,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                      textAlign: TextAlign.right
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Name: ",
                    style: TextStyle(
                      color: Colors.black,
                      height: 3,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                      textAlign: TextAlign.right
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Surnnnname: ",
                    style: TextStyle(
                      color: Colors.black,
                      height: 3,
                      fontSize: 25,
                      fontWeight: FontWeight.bold

                    ),
                      textAlign: TextAlign.right
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Gender: ",
                    style: TextStyle(

                      color: Colors.black,
                      height: 3,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,

                    ),
                      textAlign: TextAlign.right
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Phone:  ",
                    style: TextStyle(
                      color: Colors.black,
                      height: 3,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                      textAlign: TextAlign.right
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Blood Type: ",
                    style: TextStyle(
                      color: Colors.black,
                      height: 3,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                      textAlign: TextAlign.right
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/patientsc");
                      },
                      child: Text("Back",
                          style: TextStyle(fontSize: 20))),
                )

                 ],
            )
          ),
    )
      )
    );
  }
}
