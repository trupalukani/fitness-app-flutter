import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class PersonalTraining extends StatelessWidget {
  TextEditingController name = new TextEditingController();
  TextEditingController number = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController gender = new TextEditingController();
  TextEditingController age = new TextEditingController();
  TextEditingController height = new TextEditingController();
  TextEditingController weight = new TextEditingController();
  TextEditingController plan = new TextEditingController();

  final FocusNode myFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[900],
          title: Text(
            "Personal Training",
            style: TextStyle(
                color: Colors.yellow[100],
                fontSize: 25,
                fontWeight: FontWeight.w400,
                fontFamily: 'AkayaTelivigala'),
          ),
        ),
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.yellow[100],
            height: 800,
            child: Column(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Colors.brown[900],
                        size: 27,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Stack(children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 30, left: 10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Fill the details given below for personal Training, We will contact you ASAP!",
                              style: TextStyle(
                                  color: Colors.brown[900],
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 100,left: 10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Personalized Meal Plan: 1200/-",
                              style: TextStyle(
                                  color: Colors.brown[900],
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 60,left: 5),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Personalized Workout Plan: 2000/-",
                              style: TextStyle(
                                  color: Colors.brown[900],
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 245, left: 7),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Combo: 3000/-",
                              style: TextStyle(
                                  color: Colors.brown[900],
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "DETAILS",
                        style: TextStyle(
                            color: Colors.brown[900],
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              controller: name,
                              keyboardType: TextInputType.text,
                              decoration:
                                  new InputDecoration(labelText: "Full Name"),
                              cursorHeight: 22,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              controller: number,
                              keyboardType: TextInputType.phone,
                              decoration: new InputDecoration(
                                  labelText: "Contact Number"),
                              cursorHeight: 22,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: email,
                              keyboardType: TextInputType.emailAddress,
                              decoration:
                                  new InputDecoration(labelText: "Email"),
                              cursorHeight: 22,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: gender,
                              keyboardType: TextInputType.text,
                              decoration:
                                  new InputDecoration(labelText: "Gender"),
                              cursorHeight: 22,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Container(
                                    width: 100,
                                    child: TextField(
                                      controller: age,
                                      keyboardType: TextInputType.number,
                                      decoration:
                                          new InputDecoration(labelText: "Age"),
                                      cursorHeight: 22,
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    child: TextField(
                                      controller: height,
                                      keyboardType: TextInputType.number,
                                      decoration: new InputDecoration(
                                          labelText: "Height"),
                                      cursorHeight: 22,
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    child: TextField(
                                      controller: weight,
                                      keyboardType: TextInputType.number,
                                      decoration: new InputDecoration(
                                          labelText: "Weight"),
                                      cursorHeight: 22,
                                    ),
                                  ),
                                ]),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: plan,
                              keyboardType: TextInputType.text,
                              decoration: new InputDecoration(
                                  labelText: "Your Plan type"),
                              cursorHeight: 22,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RaisedButton(
                              padding: EdgeInsets.all(15),
                              child: new Text("Contact Me!"),
                              textColor: Colors.yellow[200],
                              color: Colors.brown[900],
                              onPressed: () {
                                Map<String, dynamic> data = {
                                  "name": name.text,
                                  "number": number.text,
                                  "email": email.text,
                                  "gender": gender.text,
                                  "age": age.text,
                                  "height": height.text,
                                  "weight": weight.text,
                                  "plan": plan.text,
                                };
                                FirebaseFirestore.instance.collection("training").add(data);
                              },
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(20.0)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
