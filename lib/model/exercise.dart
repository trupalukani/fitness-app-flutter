import 'package:dfit/model/workouts.dart';
import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Ex1(),
            SizedBox(height: 10),
            Ex2(),
            SizedBox(height: 25),
            Ex3(),
            SizedBox(height: 10),
            Ex4(),
            SizedBox(height: 10),
            Ex5(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class Ex1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Workouts()));
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 15,
        ),
        width: 320,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.brown[800],
              Colors.brown[500],
              Colors.brown[800],
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Workout 1 (Monday)',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.yellow[100],
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Full Body Workout',
                style: TextStyle(
                    fontSize: 27,
                    color: Colors.yellow[100],
                    fontFamily: 'Lobster'),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Image.asset(
                      "lib/assets/images/ba.png",
                      color: Colors.yellow[100],
                      height: 50,
                      width: 50,
                    ),
                    onPressed: null,
                  ),
                  SizedBox(width: 15),
                  IconButton(
                    icon: Image.asset(
                      "lib/assets/images/biceps.png",
                      color: Colors.yellow[100],
                      height: 50,
                      width: 50,
                    ),
                    onPressed: null,
                  ),
                  SizedBox(width: 15),
                  IconButton(
                    icon: Image.asset(
                      "lib/assets/images/ch.png",
                      color: Colors.yellow[100],
                      height: 50,
                      width: 50,
                    ),
                    onPressed: null,
                  ),
                  SizedBox(width: 15),
                  IconButton(
                    icon: Image.asset(
                      "lib/assets/images/leg.png",
                      color: Colors.yellow[100],
                      height: 50,
                      width: 50,
                    ),
                    onPressed: null,
                  ),
                  SizedBox(width: 10)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Ex2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Workouts1()));
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        width: 330,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.brown[800],
              Colors.brown[500],
              Colors.brown[800],
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Workout 2 (Wednesday)',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.yellow[100],
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Upper Body Workout-1',
                style: TextStyle(
                    fontSize: 27,
                    color: Colors.yellow[100],
                    fontFamily: 'Lobster'),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Image.asset(
                      "lib/assets/images/ba.png",
                      color: Colors.yellow[100],
                      height: 50,
                      width: 50,
                    ),
                    onPressed: null,
                  ),
                  SizedBox(width: 15),
                  IconButton(
                    icon: Image.asset(
                      "lib/assets/images/biceps.png",
                      color: Colors.yellow[100],
                      height: 50,
                      width: 50,
                    ),
                    onPressed: null,
                  ),
                  SizedBox(width: 15),
                  IconButton(
                    icon: Image.asset(
                      "lib/assets/images/ch.png",
                      color: Colors.yellow[100],
                      height: 50,
                      width: 50,
                    ),
                    onPressed: null,
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Ex3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Workouts2()));
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 15,
        ),
        width: 320,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.brown[800],
              Colors.brown[500],
              Colors.brown[800],
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Workout 3 (Thursday)',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.yellow[100],
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Lower Body Workout-1',
                style: TextStyle(
                    fontSize: 27,
                    color: Colors.yellow[100],
                    fontFamily: 'Lobster'),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Image.asset(
                      "lib/assets/images/leg.png",
                      color: Colors.yellow[100],
                      height: 50,
                      width: 50,
                    ),
                    onPressed: null,
                  ),
                  SizedBox(width: 10)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Ex4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Workouts3()));
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 15,
        ),
        width: 320,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.brown[800],
              Colors.brown[500],
              Colors.brown[800],
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Workout 4 (Friday)',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.yellow[100],
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Upper Body Workout-2',
                style: TextStyle(
                    fontSize: 27,
                    color: Colors.yellow[100],
                    fontFamily: 'Lobster'),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Image.asset(
                      "lib/assets/images/ba.png",
                      color: Colors.yellow[100],
                      height: 50,
                      width: 50,
                    ),
                    onPressed: null,
                  ),
                  SizedBox(width: 15),
                  IconButton(
                    icon: Image.asset(
                      "lib/assets/images/biceps.png",
                      color: Colors.yellow[100],
                      height: 50,
                      width: 50,
                    ),
                    onPressed: null,
                  ),
                  SizedBox(width: 15),
                  IconButton(
                    icon: Image.asset(
                      "lib/assets/images/ch.png",
                      color: Colors.yellow[100],
                      height: 50,
                      width: 50,
                    ),
                    onPressed: null,
                  ),
                  SizedBox(width: 10)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Ex5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Workouts4()));
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 15,
        ),
        width: 320,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.brown[800],
              Colors.brown[500],
              Colors.brown[800],
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Workout 5 (Saturday)',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.yellow[100],
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Lower Body Workout-2',
                style: TextStyle(
                    fontSize: 27,
                    color: Colors.yellow[100],
                    fontFamily: 'Lobster'),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Image.asset(
                      "lib/assets/images/leg.png",
                      color: Colors.yellow[100],
                      height: 50,
                      width: 50,
                    ),
                    onPressed: null,
                  ),
                  SizedBox(width: 10)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
