import 'package:dfit/model/allworkouts.dart';
import 'package:flutter/material.dart';

class Workouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.brown[900],
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 10,
          ),
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.yellow[200],
                  size: 27,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                height: 2,
              ),
              ListTile(
                //title subtitle icon etc
                title: Text(
                  "Monday",
                  style: TextStyle(color: Colors.yellow[200], fontSize: 20),
                ),
                subtitle: Text(
                  "Full Body Workout",
                  style: TextStyle(
                    color: Colors.yellow[100],
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          color: Colors.brown[200],
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "75 min",
                          style: TextStyle(
                            color: Colors.yellow[200],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.fireplace,
                          color: Colors.brown[200],
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "450 kCal",
                          style: TextStyle(
                            color: Colors.yellow[200],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              for (int i = 0; i < fullBody.length; i++)
                Column(
                  children: <Widget>[
                    for (int j = 0; j < fullBody[i].length; j++)
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.brown[900],
                          ),
                          padding: const EdgeInsets.all(6),
                          child: Icon(
                            Icons.arrow_right,
                            color: Colors.yellow[200],
                          )
                        ),
                        title: Text(
                          fullBody[i][j].name,
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                        subtitle: Text(
                          fullBody[i][j].instr,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    SizedBox(height: 20),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class Workouts1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.brown[900],
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 10,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.yellow[200],
                    size: 27,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(
                  height: 2,
                ),
                ListTile(
                  //title subtitle icon etc
                  title: Text(
                    "Wednesday",
                    style: TextStyle(color: Colors.yellow[200], fontSize: 20),
                  ),
                  subtitle: Text(
                    "Upper Body Workout 1",
                    style: TextStyle(
                      color: Colors.yellow[100],
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Colors.brown[200],
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "60 min",
                            style: TextStyle(
                              color: Colors.yellow[200],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.fireplace,
                            color: Colors.brown[200],
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "400 kCal",
                            style: TextStyle(
                              color: Colors.yellow[200],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                for (int i = 0; i < upperBody.length; i++)
                  Column(
                    children: <Widget>[
                      for (int j = 0; j < upperBody[i].length; j++)
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.brown[900],
                            ),
                            padding: const EdgeInsets.all(6),
                            child: Icon(
                            Icons.arrow_right,
                            color: Colors.yellow[200],
                          )
                          ),
                          title: Text(
                            upperBody[i][j].name,
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          subtitle: Text(
                            upperBody[i][j].instr,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      SizedBox(height: 20),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Workouts2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.brown[900],
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 10,
          ),
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.yellow[200],
                  size: 27,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                height: 2,
              ),
              ListTile(
                //title subtitle icon etc
                title: Text(
                  "Thursday",
                  style: TextStyle(color: Colors.yellow[200], fontSize: 20),
                ),
                subtitle: Text(
                  "Lower Body Workout 1",
                  style: TextStyle(
                    color: Colors.yellow[100],
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          color: Colors.brown[200],
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "65 min",
                          style: TextStyle(
                            color: Colors.yellow[200],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.fireplace,
                          color: Colors.brown[200],
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "425 kCal",
                          style: TextStyle(
                            color: Colors.yellow[200],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              for (int i = 0; i < lowerBody.length; i++)
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.brown[900],
                        ),
                        padding: const EdgeInsets.all(6),
                        child: Icon(
                            Icons.arrow_right,
                            color: Colors.yellow[200],
                          )
                      ),
                      title: Text(
                        lowerBody[i].name,
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      subtitle: Text(
                        lowerBody[i].instr,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class Workouts3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.brown[900],
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 10,
          ),
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.yellow[200],
                  size: 27,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                height: 2,
              ),
              ListTile(
                //title subtitle icon etc
                title: Text(
                  "Friday",
                  style: TextStyle(color: Colors.yellow[200], fontSize: 20),
                ),
                subtitle: Text(
                  "Upper Body Workout 2",
                  style: TextStyle(
                    color: Colors.yellow[100],
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          color: Colors.brown[200],
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "60 min",
                          style: TextStyle(
                            color: Colors.yellow[200],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.fireplace,
                          color: Colors.brown[200],
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "410 kCal",
                          style: TextStyle(
                            color: Colors.yellow[200],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              for (int i = 0; i < upperBody2.length; i++)
                Column(
                  children: <Widget>[
                    for (int j = 0; j < upperBody2[i].length; j++)
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.brown[900],
                          ),
                          padding: const EdgeInsets.all(6),
                          child: Icon(
                            Icons.arrow_right,
                            color: Colors.yellow[200],
                          )
                        ),
                        title: Text(
                          upperBody2[i][j].name,
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                        subtitle: Text(
                          upperBody2[i][j].instr,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    SizedBox(height: 20),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class Workouts4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.brown[900],
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 10,
          ),
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.yellow[200],
                  size: 27,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                height: 2,
              ),
              ListTile(
                //title subtitle icon etc
                title: Text(
                  "Saturday",
                  style: TextStyle(color: Colors.yellow[200], fontSize: 20),
                ),
                subtitle: Text(
                  "Lower Body Workout 2",
                  style: TextStyle(
                    color: Colors.yellow[100],
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          color: Colors.brown[200],
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "60 min",
                          style: TextStyle(
                            color: Colors.yellow[200],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.fireplace,
                          color: Colors.brown[200],
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "415 kCal",
                          style: TextStyle(
                            color: Colors.yellow[200],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              for (int i = 0; i < lowerBody2.length; i++)
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.brown[900],
                        ),
                        padding: const EdgeInsets.all(6),
                        child: Icon(
                            Icons.arrow_right,
                            color: Colors.yellow[200],
                          )
                      ),
                      title: Text(
                        lowerBody2[i].name,
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      subtitle: Text(
                        lowerBody2[i].instr,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
