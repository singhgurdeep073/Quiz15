import 'dart:math';
import 'package:flutter/material.dart';
import 'Otpscreen.dart';
import 'WelcomBack.dart';


class LogReg extends StatefulWidget {
  const LogReg({super.key});

  @override
  State<LogReg> createState() => _LogRegState();
}

class _LogRegState extends State<LogReg>{
  bool checkBox1=false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool value = false;
  int? verificationCode;
  var phoneNo = TextEditingController();
  void generateRandomCode() {
    Random random = Random();
    verificationCode = random.nextInt(9000) + 1000;
  }

  bool isValidPhoneNumber(String phoneNumber) {
    RegExp regex = RegExp(r'^\+91[1-9][0-9]{9}$');
    return regex.hasMatch(phoneNumber);
  }


  @override
  void dispose() {
    phoneNo.dispose();
    verificationCode = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: LayoutBuilder(
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
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.chevron_left,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text(
                                        "Login/Register",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        "Let's get you started",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.help_outline,
                                      size: 30,
                                      color: Colors.white,
                                    ),
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
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 14.0,
                                  right: 14,
                                  top: 14,
                                ),
                                child: TextFormField(
                                  maxLength: 13,
                                  controller: phoneNo,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    counterStyle: TextStyle(color: Colors.white),
                                    contentPadding: EdgeInsets.only(left: 18),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                    ),
                                    labelText: 'Enter 10-digit phone number',

                                    labelStyle: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                    ),
                                    filled: true,
                                    fillColor: Color(0xffe6e6e6),
                                  ),
                                  onChanged: (value) {

                                    if (!value.startsWith('+91')) {
                                      phoneNo.value = TextEditingValue(
                                        text: '+91'+value,
                                        selection: TextSelection.fromPosition(
                                          TextPosition(offset: value.length + 3),
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    activeColor: Colors.black,
                                    checkColor: Colors.white,
                                    shape: RoundedRectangleBorder(),
                                    value: checkBox1,
                                    onChanged: (bool? newValue) {
                                      setState(() {
                                        checkBox1 = newValue!;
                                      });
                                    },
                                  ),
                                  Text("I certify that I am above 18 years"),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  String phoneNumber = phoneNo.text;
                                  if (isValidPhoneNumber(phoneNumber) &&
                                      checkBox1) {
                                    generateRandomCode();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return OtpScreen(verificationCode: verificationCode);
                                        },
                                      ),
                                    );
                                    print(phoneNumber);
                                  } else {
                                    if (!isValidPhoneNumber(phoneNumber)) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar( duration: Duration(seconds: 3),
                                          backgroundColor: Color(0xff259de0),
                                          content: Text(
                                              'Invalid phone number. Please enter 10-digit number.'),
                                        ),
                                      );
                                    }
                                    else if (!checkBox1) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          duration: Duration(seconds: 3),
                                              backgroundColor: Color(0xff259de0),
                                          content: Text(
                                              'Please certify that you are above 18 years old.'),
                                        ),
                                      );
                                    }

                                  }
                                },
                                child: Container(
                                  height: 40,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    color: Color(0xff109e38),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Continue",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "By continuing, I agree to Quiz 15 ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "T&C.",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Have an invite Code?",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.blue,
                                        decorationThickness: 3,
                                        decorationStyle:
                                        TextDecorationStyle.dashed,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // Navigator.push(context,MaterialPageRoute(builder: (context){
                                        //   return Welcome();
                                        // }));
                                      },
                                      child: Text(
                                        "Other login Options",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Colors.blue,
                                          decorationThickness: 3,
                                          decorationStyle:
                                          TextDecorationStyle.dashed,
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


