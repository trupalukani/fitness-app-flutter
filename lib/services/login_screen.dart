import 'package:dfit/services/custom_button.dart';
import 'package:dfit/services/custom_text_field.dart';
import 'package:dfit/services/otp_confirm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LogInScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String phoneNo;
  FocusNode _blankFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    var heightPiece = MediaQuery.of(context).size.height / 10;
    var widthPiece = MediaQuery.of(context).size.width / 10;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow[200],
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusScope.of(context).requestFocus(_blankFocusNode);
          },
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: buildCircleAvatar(heightPiece)),
                SizedBox(height: 20),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: widthPiece),
                    child: buildCustomTextFieldForMobileNo()),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: widthPiece),
                  child: buildCustomButtonForSendOTPButton(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar(double heightPiece) {
    return CircleAvatar(
        backgroundColor: Colors.brown[900],
        radius: heightPiece * 1.5,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 55,
            ),
            Text(
              "DFIT",
              style: TextStyle(
                  color: Colors.yellow[200],
                  fontSize: 50,
                  fontFamily: "lobster"),
            ),
            Text(
              "Your Digital Trainer!",
              style: TextStyle(color: Colors.yellow[200], fontSize: 20),
            ),
          ],
        ));
  }

  CustomButton buildCustomButtonForSendOTPButton(BuildContext context) {
    return CustomButton(
        buttonColor: Colors.brown[900],
        textColor: Colors.yellow[200],
        text: 'Send OTP',
        onPressed: () {
          if (_formKey.currentState.validate()) {
            Navigator.of(context).push(CupertinoPageRoute(
                builder: (BuildContext context) =>
                    OTPConfirmationPage(phoneNo: phoneNo)));
          }
        });
  }

  CustomTextField buildCustomTextFieldForMobileNo() {
    return CustomTextField(
        maxLength: 10,
        hintText: 'Enter 10 digit mobile no.',
        inputType: TextInputType.phone,
        onSaved: ((value) {
          phoneNo = '+91$value';
        }),
        validator: (value) {
          if (value.length < 10 || value.length > 10) {
            return "Invalid";
          } else {
            print(value.length);
            _formKey.currentState.save();
            return null;
          }
        });
  }
}
