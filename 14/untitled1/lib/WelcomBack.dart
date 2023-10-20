import 'package:flutter/material.dart';
import 'package:untitled1/BottomNavigation.dart';
import 'package:untitled1/Home/Category.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) =>
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: constraints.maxHeight * .6 + 70, //70 for bottom
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          bottom: 390,
                          // to shift little up
                          left: 0,
                          right: 0,
                          child: Column(
                            children: [
                              Center(child:
                              Container(
                                width: 360,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage(
                                        "images/AppBar.jpeg"),
                                        fit: BoxFit.cover)
                                ),
                                margin: EdgeInsets.only(),
                                height: 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    IconButton(onPressed: () {},
                                        icon: Icon(
                                          Icons.chevron_left, size: 30,
                                          color: Colors.white,)),
                                    Column(children: [
                                      SizedBox(height: 25,),
                                      Text("Welcome Back !", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),),
                                      Text("Ready to play and win?",
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),),
                                    ],),
                                    IconButton(onPressed: () {},
                                        icon: Icon(
                                          Icons.help_outline, size: 30,
                                          color: Colors.white,))
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
                            padding: const EdgeInsets.only(top: 8.0,),
                            child: Container(
                              height: 400,
                              decoration: BoxDecoration(
                                  color: Colors.white,

                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 14.0,right: 14,top: 14,),
                                    child:  TextFormField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white),
                                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white),
                                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                        ),
                                        labelText: 'Email address',
                                        labelStyle: TextStyle(
                                            fontSize: 13.0, color: Colors.black
                                        ),
                                        filled: true,
                                        fillColor: Color(0xffe6e6e6),
                                        prefixIcon: Icon(
                                          Icons.mail,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(value: value, onChanged: (bool ){

                                      }),
                                      Text("I certify that I am above 18 years"),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context,MaterialPageRoute(builder: (context){
                                          return NavBar();
                                        }));
                                      },
                                      child: Container(height: 40,
                                        width: 350,
                                        decoration: BoxDecoration(
                                            color: Color(0xff109e38),
                                            borderRadius: BorderRadius.circular(5)
                                        ),child: Center(child: Text("Continue",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),)),),
                                    ),
                                  ),
                                  Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("By continuing, I agree to Quiz 15 ",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                      Text("T&C.",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 70,right: 70),
                                    child: Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Divider(
                                                thickness: 1,
                                              )
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 30,width: 30,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffe6e6e6),

                                                  borderRadius: BorderRadius.circular(50)
                                              ),
                                              child: Center(
                                                child: Text('OR',
                                                    style: TextStyle()),
                                              ),
                                            ),
                                          ),

                                          Expanded(
                                              child: Divider(
                                                thickness: 1,)
                                          ),
                                        ]
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [

                                        Container(height: 40,width: 120,
                                          decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  border: Border.all(color: Colors.blueGrey)
),
                                          child: Center(child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.g_mobiledata,size: 35,color: Color(0xffea4335),),
                                              Text("GOOGLE",),
                                            ],
                                          )),),
                                        Container(height: 40,width: 120,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              border: Border.all(color: Colors.blueGrey)
                                          ),child: Center(child: Row(
                                            children: [
                                              Icon(Icons.facebook,size: 35,color: Color(0xff1773ea),),
                                              Text("FACEBOOK"),
                                            ],
                                          )),),
                                      ],
                                    ),
                                  )
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
