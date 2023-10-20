import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/Home/JoinPage.dart';

class Pool extends StatefulWidget {
  const Pool({super.key});

  @override
  State<Pool> createState() => _PoolState();
}

class _PoolState extends State<Pool> {
  bool checkBox1=false;
  bool checkBox2=false;
  bool checkBox3=false;
  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar:  AppBar(

            actions: [

              Container(
                margin: EdgeInsets.only(right: 100),
                height: 70,width: 70,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/logo.png"))
                ),
              ),
              IconButton(onPressed: (){}, icon:Icon( Icons.account_balance_wallet,color: Color(0xff259de0) ),),

            ],
            bottom: TabBar(
                labelColor:Color(0xff259de0) ,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor:Color(0xff259de0),
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Entry", style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.bold    ),),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("SPOTS", style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.bold    ),),
                    ),
                  ),
                  Tab(
                    child: Text("Price", style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.bold    ),),
                  ),
                  Tab(
                    child: Text("WINNER", style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Tab(
                    child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: (){}, icon: Icon(Icons.filter_alt_rounded,size: 15,))),
                  )


                ]),

        ),
        body:   SingleChildScrollView(
          child: Column(
            children: [
              Container(height: 70,
                width: MediaQuery.of(context).size.width*1,
                color: Color(0xff259de0),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8,top: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Select Content", style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.white,
                        ),),
                        Text("Join", style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                        ),),
                        Text("Create Team", style: GoogleFonts.poppins(
                          fontSize: 15, color: Colors.white,
                        ),),
                      ],
                    ),
                  ),
                  Row(
                      children: <Widget>[
                        Checkbox(
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                          shape: const CircleBorder(),
                          value: checkBox1,
                          onChanged: (bool? newValue) {
                            setState(() {
                              checkBox1 = newValue!;
                            });
                          },
                        ),
                        Expanded(
                            child: Divider(
                              thickness: 1,
                            )
                        ),
                        Checkbox(
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                          shape: const CircleBorder(
                          ),
                          value: checkBox2,
                          onChanged: (bool? newValue) {
                            setState(() {
                              checkBox2 = newValue!;
                            });
                          },
                        ),
                        Expanded(
                            child: Divider(
                              thickness: 1,)
                        ),
                        Checkbox(
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                          shape: const CircleBorder(),
                          value: checkBox3,
                          onChanged: (bool? newValue) {
                            setState(() {
                              checkBox3 = newValue!;
                            });
                          },
                        ),
                      ]
                  ),
                ],),
              ),
              SizedBox(height: 5,),
              InkWell(
   onTap: (){
     Navigator.push(context, MaterialPageRoute(builder: (context){
       return Join();
     }));
   },

                child: Container(height: 170,width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: Container(height: 36,
                              width: 210,
                              decoration: BoxDecoration(
                                  color: Color(0xffe3e7ed),
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 7.0,right: 1,top: 12),
                                child: Text(
                                  "General Reasoning Ability",
                                  style: GoogleFonts.poppins(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("2 Days",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffb63131),fontSize: 13),),
                                Text("01:30PM",style: TextStyle(fontSize: 13),),
                              ],
                            ),
                          ),
                        ],),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Row(
                              children: [
                                Container(
                                    height:35,
                                    child: Row(children: [
                                      Container(
                                        height: 30,width: 30,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Color(0xffffeedb),
                                        ),child: Center(
                                        child: Text(
                                          '03',
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                      ),
                                      ),
                                      Text(
                                        ':',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      Container(
                                        height: 30,width: 30,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Color(0xffffeedb),
                                        ),child: Center(
                                        child: Text(
                                          '23',
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                      ),
                                      ),
                                      Text(
                                        ':',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      Container(
                                        height: 30,width: 30,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Color(0xffffeedb),
                                        ),child: Center(
                                        child: Text(
                                          '60',
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                      ),
                                      ),

                                    ],)),

                              ],
                            ),

                            Row(
                              children: [

                                Container(
                                  height:35,width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Color(0xff07a76b)
                                  ),
                                  child:   Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Join Now',
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                          'FREE',
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            color: Colors.yellow,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),),

                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8),
                        child: Divider(
                          thickness: .30,
                          color: Color(0xff878787),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 230.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Prize Pool',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,


                                ),
                              ),
                              Text(
                                'Rs.1',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,


                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],),)
              ),
              SizedBox(height: 5,),
              Container(height: 170,width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8),
                          child: Container(height: 36,
                            width: 210,
                            decoration: BoxDecoration(
                                color: Color(0xffe3e7ed),
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7.0,right: 1,top: 12),
                              child: Text(
                                "General Reasoning Ability",
                                style: GoogleFonts.poppins(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("2 Days",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffb63131),fontSize: 13),),
                              Text("01:30PM",style: TextStyle(fontSize: 13),),
                            ],
                          ),
                        ),
                      ],),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Row(
                            children: [
                              Container(
                                  height:35,
                                  child: Row(children: [
                                    Container(
                                      height: 30,width: 30,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffffeedb),
                                      ),child: Center(
                                      child: Text(
                                        '03',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    ),
                                    Text(
                                      ':',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    Container(
                                      height: 30,width: 30,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffffeedb),
                                      ),child: Center(
                                      child: Text(
                                        '23',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    ),
                                    Text(
                                      ':',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    Container(
                                      height: 30,width: 30,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffffeedb),
                                      ),child: Center(
                                      child: Text(
                                        '60',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    ),

                                  ],)),

                            ],
                          ),

                          Row(
                            children: [

                              Container(
                                height:35,width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xff07a76b)
                                ),
                                child:   Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Join Now',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                        'FREE',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),),

                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Divider(
                        thickness: .30,
                        color: Color(0xff878787),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 230.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prize Pool',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,


                              ),
                            ),
                            Text(
                              'Rs.1',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,


                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],),),
              SizedBox(height: 5,),
              Container(height: 170,width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8),
                          child: Container(height: 36,
                            width: 210,
                            decoration: BoxDecoration(
                                color: Color(0xffe3e7ed),
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7.0,right: 1,top: 12),
                              child: Text(
                                "General Reasoning Ability",
                                style: GoogleFonts.poppins(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("2 Days",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffb63131),fontSize: 13),),
                              Text("01:30PM",style: TextStyle(fontSize: 13),),
                            ],
                          ),
                        ),
                      ],),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Row(
                            children: [
                              Container(
                                  height:35,
                                  child: Row(children: [
                                    Container(
                                      height: 30,width: 30,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffffeedb),
                                      ),child: Center(
                                      child: Text(
                                        '03',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    ),
                                    Text(
                                      ':',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    Container(
                                      height: 30,width: 30,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffffeedb),
                                      ),child: Center(
                                      child: Text(
                                        '23',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    ),
                                    Text(
                                      ':',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    Container(
                                      height: 30,width: 30,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffffeedb),
                                      ),child: Center(
                                      child: Text(
                                        '60',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    ),

                                  ],)),

                            ],
                          ),

                          Row(
                            children: [

                              Container(
                                height:35,width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xff07a76b)
                                ),
                                child:   Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Join Now',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                        'FREE',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),),

                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Divider(
                        thickness: .30,
                        color: Color(0xff878787),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 230.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prize Pool',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,


                              ),
                            ),
                            Text(
                              'Rs.1',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,


                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],),),
              SizedBox(height: 5,),
              Container(height: 170,width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8),
                          child: Container(height: 36,
                            width: 210,
                            decoration: BoxDecoration(
                                color: Color(0xffe3e7ed),
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7.0,right: 1,top: 12),
                              child: Text(
                                "General Reasoning Ability",
                                style: GoogleFonts.poppins(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("2 Days",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffb63131),fontSize: 13),),
                              Text("01:30PM",style: TextStyle(fontSize: 13),),
                            ],
                          ),
                        ),
                      ],),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Row(
                            children: [
                              Container(
                                  height:35,
                                  child: Row(children: [
                                    Container(
                                      height: 30,width: 30,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffffeedb),
                                      ),child: Center(
                                      child: Text(
                                        '03',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    ),
                                    Text(
                                      ':',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    Container(
                                      height: 30,width: 30,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffffeedb),
                                      ),child: Center(
                                      child: Text(
                                        '23',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    ),
                                    Text(
                                      ':',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    Container(
                                      height: 30,width: 30,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffffeedb),
                                      ),child: Center(
                                      child: Text(
                                        '60',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    ),

                                  ],)),

                            ],
                          ),

                          Row(
                            children: [

                              Container(
                                height:35,width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xff07a76b)
                                ),
                                child:   Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Join Now',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                        'FREE',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),),

                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Divider(
                        thickness: .30,
                        color: Color(0xff878787),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 230.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prize Pool',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,


                              ),
                            ),
                            Text(
                              'Rs.1',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,


                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],),),
              SizedBox(height: 5,),
              Container(height: 170,width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8),
                          child: Container(height: 36,
                            width: 210,
                            decoration: BoxDecoration(
                                color: Color(0xffe3e7ed),
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7.0,right: 1,top: 12),
                              child: Text(
                                "General Reasoning Ability",
                                style: GoogleFonts.poppins(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("2 Days",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffb63131),fontSize: 13),),
                              Text("01:30PM",style: TextStyle(fontSize: 13),),
                            ],
                          ),
                        ),
                      ],),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Row(
                            children: [
                              Container(
                                  height:35,
                                  child: Row(children: [
                                    Container(
                                      height: 30,width: 30,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffffeedb),
                                      ),child: Center(
                                      child: Text(
                                        '03',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    ),
                                    Text(
                                      ':',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    Container(
                                      height: 30,width: 30,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffffeedb),
                                      ),child: Center(
                                      child: Text(
                                        '23',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    ),
                                    Text(
                                      ':',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    Container(
                                      height: 30,width: 30,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffffeedb),
                                      ),child: Center(
                                      child: Text(
                                        '60',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    ),

                                  ],)),

                            ],
                          ),

                          Row(
                            children: [

                              Container(
                                height:35,width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xff07a76b)
                                ),
                                child:   Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Join Now',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                        'FREE',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),),

                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Divider(
                        thickness: .30,
                        color: Color(0xff878787),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 230.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prize Pool',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,


                              ),
                            ),
                            Text(
                              'Rs.1',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,


                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],),),
              SizedBox(height: 5,),
              Container(height: 170,width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8),
                          child: Container(height: 36,
                            width: 210,
                            decoration: BoxDecoration(
                                color: Color(0xffe3e7ed),
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7.0,right: 1,top: 12),
                              child: Text(
                                "General Reasoning Ability",
                                style: GoogleFonts.poppins(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("2 Days",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffb63131),fontSize: 13),),
                              Text("01:30PM",style: TextStyle(fontSize: 13),),
                            ],
                          ),
                        ),
                      ],),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Row(
                            children: [
                              Container(
                                  height:35,
                                  child: Row(children: [
                                    Container(
                                      height: 30,width: 30,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffffeedb),
                                      ),child: Center(
                                      child: Text(
                                        '03',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    ),
                                    Text(
                                      ':',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    Container(
                                      height: 30,width: 30,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffffeedb),
                                      ),child: Center(
                                      child: Text(
                                        '23',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    ),
                                    Text(
                                      ':',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    Container(
                                      height: 30,width: 30,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffffeedb),
                                      ),child: Center(
                                      child: Text(
                                        '60',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    ),

                                  ],)),

                            ],
                          ),

                          Row(
                            children: [

                              Container(
                                height:35,width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xff07a76b)
                                ),
                                child:   Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Join Now',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                        'FREE',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),),

                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Divider(
                        thickness: .30,
                        color: Color(0xff878787),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 230.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prize Pool',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,


                              ),
                            ),
                            Text(
                              'Rs.1',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,


                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],),),
              SizedBox(height: 5,),




            ],
          ),
        ),
        ),



    );
  }
}
