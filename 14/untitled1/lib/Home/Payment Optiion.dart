import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class PaymentOption extends StatefulWidget {
  const PaymentOption({super.key});

  @override
  State<PaymentOption> createState() => _PaymentOptionState();
}

class _PaymentOptionState extends State<PaymentOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
      backgroundColor:Color(0xff259de0),
      title: Text("Payment Option",style: TextStyle(fontSize: 15,color: Colors.white),),),
    body: SingleChildScrollView(
      child: Column(children: [
        Container(padding: EdgeInsets.only(left: 12),
           width: MediaQuery.of(context).size.width*1,
          height: 30,color: Colors.grey.shade200,
          child: Text("Add ₹6",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Icon(Icons.payments_rounded,size: 19,color: Color(0xff259de0),),
                      Text(" PAYMENT OFFERS(9)",style: TextStyle(fontSize: 12),)
                    ],),
                    Text("View All")
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(

                    child: Column(
                      children: [

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 80,
                                width: 200,

                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blueAccent),
                                    borderRadius: BorderRadius.circular(12),
                                    gradient: LinearGradient(colors: [ Colors.lightBlue.shade100,
                                      Colors.white
                                    ])
                                ),child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height:50,
                                      child: Image.asset("images/pay.png")),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 18,),
                                      Text("CRED Pay UPI",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                                      Text("Flat ₹10 Cashbook"),
                                    ],)
                                ],) ,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 80,
                                width: 200,

                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blueAccent),
                                    borderRadius: BorderRadius.circular(12),
                                    gradient: LinearGradient(colors: [ Colors.lightBlue.shade100,
                                      Colors.white
                                    ])
                                ),child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height:50,
                                      child: Image.asset("images/pay.png")),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 18,),
                                      Text("CRED Pay UPI",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                                      Text("Flat ₹10 Cashbook"),
                                    ],)
                                ],) ,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 80,
                                width: 200,

                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blueAccent),
                                    borderRadius: BorderRadius.circular(12),
                                    gradient: LinearGradient(colors: [ Colors.lightBlue.shade100,
                                      Colors.white
                                    ])
                                ),child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height:50,
                                      child: Image.asset("images/pay.png")),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 18,),
                                      Text("CRED Pay UPI",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                                      Text("Flat ₹10 Cashbook"),
                                    ],)
                                ],) ,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 80,
                                width: 200,

                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blueAccent),
                                    borderRadius: BorderRadius.circular(12),
                                    gradient: LinearGradient(colors: [ Colors.lightBlue.shade100,
                                      Colors.white
                                    ])
                                ),child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height:50,
                                      child: Image.asset("images/pay.png")),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 18,),
                                      Text("CRED Pay UPI",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                                      Text("Flat ₹10 Cashbook"),
                                    ],)
                                ],) ,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 80,
                                width: 200,

                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blueAccent),
                                    borderRadius: BorderRadius.circular(12),
                                    gradient: LinearGradient(colors: [ Colors.lightBlue.shade100,
                                      Colors.white
                                    ])
                                ),child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height:50,
                                      child: Image.asset("images/pay.png")),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 18,),
                                      Text("CRED Pay UPI",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                                      Text("Flat ₹10 Cashbook"),
                                    ],)
                                ],) ,
                              ),
                            ),





                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8,),
        Container(
          width: 400,
          color: Colors.white,
          height: 120,child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 24),
                child: Row(children: [
                  Icon(CupertinoIcons.star),

                  Text("PREFRRED PAYMENT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),)
        ],),
              ),
              ListTile(
                  leading: Container(
                      height:50,
                      child: Image.asset("images/pay.png")),
                  title:Text("Wallet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.grey),),
                  subtitle: Text("AMAZON PAY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),

                  trailing:Text("LINK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.blueAccent),)
              )
            ],
          ),
        ),
        SizedBox(height: 8,),
        Container(
          width: 400,
          color: Colors.white,
          height: 40,child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 24,left: 24,top: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Icon(CupertinoIcons.star),

                    Text("DEBIT/CREADIT CARDS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),)
                  ],),
                  Text("LINK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.blueAccent),)
                ],
              ),
            ),

          ],
        ),
        ),
        SizedBox(height: 8,),
        Container(
          width: 800,
          color: Colors.white,
          height: 200,child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:8.0,left: 24),
              child: Row(children: [
                Icon(Icons.account_balance_wallet),

                Text("Wallet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),)
              ],),
            ),
            ListTile(
                leading: Container(
                    height:50,
                    child: Image.asset("images/pay.png")),
                title:Text("Wallet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.grey),),
                subtitle: Text("AMAZON PAY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),

                trailing:Text("LINK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.blueAccent),)
            ),
            ListTile(
                leading: Container(
                    height:50,
                    child: Image.asset("images/pay.png")),
                title:Text("Wallet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.grey),),
                subtitle: Text("AMAZON PAY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),

                trailing:Text("LINK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.blueAccent),)
            ),
          ],
        ),
        ),
        SizedBox(height: 8,),
        Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Container(height: 150,color: Colors.white,
    width: 800,
    child:
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 24,left: 24,top: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Icon(CupertinoIcons.home),

                Text(" NET BANKING",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),)
              ],),
              Text("View All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),)
            ],
          ),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Container(
            height: 60,width: 60,

            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(image: AssetImage("images/ICICI.png")),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey),
            ),
          ),
          Container(
            height: 60,width: 60,

            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(image: AssetImage("images/axis.png")),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey),
            ),
          ),
          Container(
            height: 60,width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(image: AssetImage("images/KOTAK.png")),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey),
            ),
          ),

        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("ICICI BANK"),
            Text("AXIS BANK"),
            Text("KOTAK BANK")
          ],
        )
      ],
    ),
  ),
),
        Column(
          children: [
          Container(
              height: 100,
              child: Image.asset("images/logo.png")),
            Text("100% Secure Transactions",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(height: 40,),
      ],),
    ),
    );
  }
}
