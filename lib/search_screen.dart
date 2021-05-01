import 'package:flutter/material.dart';

import 'model/training.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'AkayaTelivigala',
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.brown[800],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.yellow[100], Colors.white]),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Tips()));
                      },
                      child: Align(
                        alignment: Alignment(-1, -1),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            height: 140,
                            width: 140,
                            color: Colors.brown[800],
                            child: IconButton(
                              icon: Image.asset(
                                "lib/assets/images/tips.png",
                                color: Colors.white,
                                height: 200,
                                width: 200,
                              ),
                              onPressed: null,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "TIPS",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PersonalTraining()));
                      },
                      child: Align(
                        alignment: Alignment(1, -1),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Container(
                            padding: EdgeInsets.all(15),
                            height: 140,
                            width: 140,
                            color: Colors.brown[800],
                            child: IconButton(
                              icon: Image.asset(
                                "lib/assets/images/train.png",
                                color: Colors.white,
                                height: 200,
                                width: 200,
                              ),
                              onPressed: null,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Personal Training",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 30),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ContactUs()));
                  },
                  child: Align(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        height: 140,
                        width: 140,
                        color: Colors.brown[800],
                        child: IconButton(
                          icon: Image.asset(
                            "lib/assets/images/contactus.png",
                            color: Colors.white,
                            height: 90,
                            width: 90,
                          ),
                          onPressed: null,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 20),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.yellow[100],
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.brown[800],
                size: 27,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                SizedBox(width: 15),
                Text(
                  "Some Tips for a Healthy life!",
                  style: TextStyle(
                      color: Colors.brown[800],
                      fontSize: 23,
                      fontWeight: FontWeight.w600),
                ),
                IconButton(
                  icon: Icon(
                    Icons.star,
                    color: Colors.brown[800],
                    size: 25,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow[100],
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      for (int i = 0; i < tip.length; i++)
                        Container(
                          width: 340,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                tip[i].tips,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Colors.brown[800], fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tip {
  final String tips;

  Tip({
    this.tips,
  });
}

final tip = [
  Tip(
    tips: "☛ Avoid processed junk food (eat real food instead).",
  ),
  Tip(
    tips:
        "☛ Get enough sleep. The importance of getting enough quality sleep cannot be overstated.",
  ),
  Tip(
    tips: "☛ Drink some water, especially before meals.",
  ),
  Tip(tips: "☛ Enjoy plenty of fruits and vegetables."),
  Tip(tips: "☛ Base your diet on plenty of foods rich in carbohydrates."),
  Tip(
    tips:
        "☛ Control portion sizes; eat the smallest portion that can satisfy hunger and then stop eating.",
  ),
  Tip(
    tips: "☛ Reduce salt and sugar intake, It can cause high blood pressure.",
  ),
  Tip(
    tips: "☛ Get on the move and try to make it a habit!",
  ),
  Tip(
    tips: "☛ Get a fitness tracker + track your steps.",
  ),
  Tip(
    tips: "☛ Stand up every 30 minutes while working.",
  ),
  Tip(
    tips: "☛ Get some direct sunlight daily morning.",
  ),
  Tip(
    tips: "☛ Value your rest day and get enough rest.",
  ),
  Tip(
    tips: "☛ Pump yourself up. Positive self-talk can boost your motivation.",
  ),
  Tip(
    tips:
        "☛ Stretch. It makes you more flexible, relieves muscle tension, and improves posture.",
  ),
  Tip(
    tips: "☛ Say no to sports drinks with extra loaded calories.",
  ),
];

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[800],
          title: Text(
            "Contact Us",
            style: TextStyle(
                color: Colors.yellow[100],
                fontSize: 25,
                fontWeight: FontWeight.w400,
                fontFamily: 'AkayaTelivigala'),
          ),
        ),
        body: Container(
          color: Colors.yellow[100],
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.brown[800],
                  size: 27,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.yellow[100],
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          width: 350,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              SizedBox(
                                height: 60,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    "Mail us at:",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.brown[800], fontSize: 22),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.mail,
                                      color: Colors.brown[800],
                                      size: 24,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Text(
                                "trainwithdfit@gmail.com",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.brown[800],
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    "Text/Call us at:",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.brown[800], fontSize: 22),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.message,
                                      color: Colors.brown[800],
                                      size: 24,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Text(
                                "+91 99988-88999",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.brown[800],
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    "Follow us at(IG):",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.brown[800], fontSize: 22),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.alternate_email,
                                      color: Colors.brown[800],
                                      size: 24,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Text(
                                "@traindfit",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.brown[800],
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 40),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    "Meet us at:",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.brown[800], fontSize: 22),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.location_on,
                                      color: Colors.brown[800],
                                      size: 24,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Text(
                                "Manjalpur, Vadodara.",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.brown[800],
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
