import 'package:dfit/model/exercise.dart';
import 'package:dfit/model/meal_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'model/meal.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            height: height * 0.32,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: const Radius.circular(35),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.yellow[200], Colors.white]),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: ListTile(
                        title: Text(
                          DateFormat.MMMMEEEEd().format(DateTime.now()),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.brown[800],
                          ),
                        ),
                        subtitle: Text(
                          "Hello!",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                            color: Colors.brown[800],
                          ),
                        ),
                        trailing: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            "lib/assets/images/user.png",
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    BMI(),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.34,
            left: 0,
            right: 0,
            child: Container(
              height: height * 0.60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 11, left: 20, top: 0, right: 10),
                    child: Text(
                      "TODAY'S MEALS!",
                      style: TextStyle(
                        fontFamily: 'Lobster-Regular',
                        color: Colors.brown[800],
                        fontWeight: FontWeight.normal,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 32,
                          ),
                          for (int i = 0; i < meals.length; i++)
                            _MealCard(
                              meal: meals[i],
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Exercise(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MealCard extends StatelessWidget {
  final Meal meal;

  const _MealCard({Key key, this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, bottom: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MealDetail(
                meal: meal,
              ),
            ),
          );
        },
        child: Material(
          color: Colors.yellow[100],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          elevation: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                    bottom: Radius.circular(20),
                  ),
                  child: Image.asset(
                    meal.imagePath,
                    width: 150,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Padding(
                  padding: EdgeInsets.only(left: 13, top: 9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        meal.mealTime,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.brown[800],
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        meal.name,
                        style: TextStyle(
                          fontFamily: 'AkayaTelivigala',
                          color: Colors.brown[800],
                          fontWeight: FontWeight.w900,
                          fontSize: 19,
                        ),
                      ),
                      Text(
                        meal.kiloCaloriesBurnt + " KCal",
                        style: TextStyle(
                          color: Colors.brown[800],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Colors.black,
                            size: 16,
                          ),
                          Text(
                            " " + meal.timeTaken + " min",
                            style: TextStyle(
                              color: Colors.brown[800],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  final TextEditingController heightX = TextEditingController();
  final TextEditingController weightX = TextEditingController();

  showAlertDialogue(BuildContext context) {
    double height = double.parse(heightX.text) / 100;
    double weight = double.parse(weightX.text);
    double heightSquare = height * height;
    String result = (weight / heightSquare).toStringAsFixed(2);
    print(result);

    Widget okButton = FlatButton(
      child: Text(
        "OK",
        style: TextStyle(color: Colors.brown[800], fontSize: 17),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("BMI", style: TextStyle(color: Colors.brown[800])),
      content: Text(
        "Your BMI is " + result,
        style: TextStyle(color: Colors.brown[800], fontSize: 20),
      ),
      actions: [
        okButton,
      ],
      backgroundColor: Colors.yellow[100],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Quick BMI",
          style: TextStyle(
            color: Colors.brown[800],
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 15,
            ),
            Container(
              width: 100,
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(labelText: "Height(cm)"),
                  cursorHeight: 22,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  maxLength: 3,
                  controller: heightX,
                ),
              ),
            ),
            SizedBox(width: 20),
            GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(new FocusNode());
              },
              child: Container(
                width: 100,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(labelText: "Weight(kg)"),
                  cursorHeight: 22,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  maxLength: 3,
                  controller: weightX,
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            RaisedButton(
              onPressed: () {
                showAlertDialogue(context);
              },
              child: Text(
                "Calculate",
                style: TextStyle(
                  color: Colors.yellow[100],
                ),
              ),
              color: Colors.brown[800],
              elevation: 10,
              hoverColor: Colors.brown[500],
            ),
          ],
        ),
      ],
    );
  }
}
