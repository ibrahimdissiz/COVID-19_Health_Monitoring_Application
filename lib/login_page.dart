import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var Userstype = List<String>();
  String Selectuserstype = "Doctor";
  String TCno;
  String Password;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    Userstype.add("Doctor");
    Userstype.add("Patient");
    Userstype.add("Healtcare Personnel");
    Userstype.add("Admin");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "COVID-19 Health Monitoring Application",
              ),
              SizedBox(
                height: 20.0,
              ),
              Image(image: AssetImage('assets/images/loginpageicon.png')),
              SizedBox(
                height: 25.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: "Enter TC No",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please enter TC No";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  TCno = value;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: "Enter Password",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please enter Password";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  Password = value;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              DropdownButton<String>(
                value: Selectuserstype,
                items: Userstype.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      "  $value",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
                icon: Icon(Icons.arrow_drop_down),
                onChanged: (String selectvalue) {
                  setState(() {
                    Selectuserstype = selectvalue;
                  });
                },
              ),
              loginButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget loginButton() => RaisedButton(
        child: Text("Login System"),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save();
            if (Selectuserstype == "Doctor" && TCno == "1" && Password == "1") {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Login Succesful"),
                      content: Text("Your login information is correct"),
                      actions: <Widget>[
                        MaterialButton(
                            child: Text("GO"),
                            onPressed: () {
                              Navigator.pushNamed(context, "/doctorsc");
                            })
                      ],
                    );
                  });
            } else if (Selectuserstype == "Patient" &&
                TCno == "1" &&
                Password == "1") {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Login Succesful"),
                      content: Text("Your login information is correct"),
                      actions: <Widget>[
                        MaterialButton(
                            child: Text("GO"),
                            onPressed: () {
                              Navigator.pushNamed(context, "/patientsc");
                            })
                      ],
                    );
                  });
            } else if (Selectuserstype == "Healtcare Personnel" &&
                TCno == "1" &&
                Password == "1") {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Login Succesful"),
                      content: Text("Your login information is correct"),
                      actions: <Widget>[
                        MaterialButton(
                            child: Text("GO"),
                            onPressed: () {
                              Navigator.pushNamed(context, "/healthcarepersc");
                            })
                      ],
                    );
                  });
            } else if (Selectuserstype == "Admin" &&
                TCno == "1" &&
                Password == "1") {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Login Succesful"),
                      content: Text("Your login information is correct"),
                      actions: <Widget>[
                        MaterialButton(
                            child: Text("GO"),
                            onPressed: () {
                              Navigator.pushNamed(context, "/adminsc");
                            })
                      ],
                    );
                  });
            } else {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Fail"),
                      content: Text("Your login information is incorrect"),
                      actions: <Widget>[
                        MaterialButton(
                            child: Text("Try Again"),
                            onPressed: () => Navigator.pop(context))
                      ],
                    );
                  });
            }
          }
        },
      );
}
