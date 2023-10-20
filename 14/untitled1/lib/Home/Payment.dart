import 'package:flutter/material.dart';

import 'Payment Optiion.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor:Color(0xff259de0),
      title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text("LowBalance",style: TextStyle(fontSize: 15,color: Colors.white),),
      Text("Contest Entry :₹6",style: TextStyle(fontSize: 15,color: Colors.white),)
    ],),),
    body: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(height: 70,width:MediaQuery.of(context).size.width*.49,
          color:  Color(0xffdee1e6),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(children: [
                Icon(Icons.cases_rounded,color: Colors.blueAccent,),
                Text("Usable Bal."),
                Icon(Icons.error_outline,color: Colors.grey,)
              ],),
              Text("₹0")
            ],),
          ),),
          Container(
            height: 70,width:MediaQuery.of(context).size.width*.49,
            color:  Color(0xffdee1e6),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Icon(Icons.currency_rupee,color: Colors.blueAccent,),
                    Text("Add Minimum"),

                  ],),
                  Text("₹3")
                ],),
            ),),

        ],
      ),
      Container(
        height: 100,color: Colors.blue.shade100,
        width: MediaQuery.of(context).size.width*1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: 130,
                  child: TextField(
                    maxLength: 6,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(

                        borderSide: BorderSide(color: Colors.blueAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                      hintText: "₹0",fillColor: Colors.white,filled: true,),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 40,width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    child: Center(child: Text("₹50")),
                  ),
                  SizedBox(width: 12,),
                  Container(
                    height: 40,width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text("₹100")),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
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
        child: Row(
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
      ),
      InkWell(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context){

            return PaymentOption();
          }));
        },
        child: Container(
          margin: EdgeInsets.only(top: 12),
          height: 40,width: 300,
          decoration: BoxDecoration(
            color: Color(0xff109e38),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Add",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              Text(" ₹6",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Color(0xffffffff),

              ),),   ],),
        ),
      ),
    ],),
    );
  }
}
