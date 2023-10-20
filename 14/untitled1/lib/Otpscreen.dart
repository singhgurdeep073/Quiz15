import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled1/Home/Category.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'BottomNavigation.dart';

class OtpScreen extends StatefulWidget {
  final int? verificationCode;

  const OtpScreen({Key? key, required this.verificationCode}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late TextEditingController otpController;
  late int currentVerificationCode;

  @override
  void initState() {
    super.initState();
    otpController = TextEditingController(text: widget.verificationCode?.toString() ?? '');
    currentVerificationCode = widget.verificationCode ?? generateRandomCode();
    Fluttertoast.showToast(
      msg: "Verification Code: $currentVerificationCode",
      textColor: Colors.white,
      backgroundColor:  Color(0xff259de0),
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
    );
  }

  int generateRandomCode() {
    Random random = Random();
    return random.nextInt(9000) + 1000;
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body:  LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: constraints.maxHeight * .6 + 70,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      bottom: 390,
                      left: 0,
                      right: 0,
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              width: 360,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/AppBar.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              margin: EdgeInsets.only(),
                              height: 100,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Verifiy OTP",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Icon(
                                    Icons.help_outline,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: constraints.maxHeight * .1,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    'Enter the 4-digit code sent to your phone number.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: OtpTextField(
                                  numberOfFields: 4,
                                  borderColor: Color(0xFF512DA8),
                                  showFieldAsBox: true,
                                  onSubmit: (String enteredCode) {
                                    int enteredCodeInt = int.tryParse(enteredCode) ?? 0;
                                    if (enteredCodeInt == widget.verificationCode) {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => NavBar()),
                                      );

                                      Fluttertoast.showToast(
                                        msg: "Verification Successful!",
                                        textColor: Colors.white,
                                        backgroundColor:  Color(0xff259de0),
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.BOTTOM,
                                      );
                                    } else {
                                      Fluttertoast.showToast(
                                        msg: "Invalid verification code. Please try again.",
                                        textColor: Colors.white,
                                        backgroundColor:  Color(0xff259de0),
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.CENTER,
                                      );
                                    }
                                  },
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
            ],
          ),
        ),
      ),

    );
  }
}
