import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/Home/Category.dart';
import 'package:untitled1/Home/JoinPage.dart';
import 'package:untitled1/Home/Payment.dart';
import 'package:untitled1/Home/RankPages/Leaderboard.dart';
import 'package:untitled1/Home/RankPages/Winnings.dart';

class Rank extends StatefulWidget {
  const Rank({super.key});

  @override
  State<Rank> createState() => _RankState();
}

class _RankState extends State<Rank> {
  @override
  bool checkBox1=false;
  bool checkBox2=false;
  bool checkBox3=false;
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.white,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 100),
              height: 70,width: 70,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/logo.png"))
              ),
            ),
            IconButton(onPressed: (){}, icon:Icon( Icons.account_balance_wallet,color: Color(0xff259de0),),),

          ],
         ),
body: Column(children: [
  Container(height: 70,
      width: MediaQuery.of(context).size.width*1,
      color:Color(0xff259de0),
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
  Container(height: 195,
  width: MediaQuery.of(context).size.width*1,
  decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black,blurRadius: 6)]),
  child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 250.0,top: 5),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Prize Pool",style: TextStyle(fontSize: 12),),
            Text(
              '₹60,000',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
          ],),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Payment()));
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
              Text("JOIN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              Text(" ₹39",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Color(0xffffffff),
                  decoration: TextDecoration.lineThrough,decorationColor:Color(0xffffffff)),),
              Text(" ₹6",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Color(0xffffffff),

              ),),   ],),
       ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          height: 40,width: 360,
          decoration: BoxDecoration(
              color: Color(0xfff5f5f5),

          ),child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Icon( Icons.monetization_on, size: 15,),
              SizedBox(width: 6,),
              Text(
                '₹60,000',
                style: TextStyle(fontWeight: FontWeight.w200,fontSize: 12),
              ),
              SizedBox(width: 6,),
              Icon( Icons.local_bar_outlined, size: 15,),
              SizedBox(width: 6,),
              Text(
                '57%',
                style: TextStyle(fontWeight: FontWeight.w200,fontSize: 12),
              ),
              SizedBox(width: 6,),
              Icon( Icons.maps_ugc_sharp, size: 15,),
              SizedBox(width: 6,),
              Text(
                'Upto 20',
                style: TextStyle(fontWeight: FontWeight.w200,fontSize: 12),
              ),
            ],),
            Row(
              children: [
                Icon( Icons.check_circle_outline, ),
                SizedBox(width: 6,),
                Text(
                  'Guaranteed',
                  style: TextStyle(fontWeight: FontWeight.w200,fontSize: 12),
                ),
              ],
            ),



          ],
        ),),
        Container(

          height: 40,width: 360,
          decoration: BoxDecoration(
            color: Color(0xfffdebeb),

          ),
          child: Row(
            children: [
              Text(" Earn 1 for every ₹60 spent on contest entry"),
            ],
          )),

      ],
  ),
  ),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
          height: 50,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),),
          child: TabBar(
            labelColor:Color(0xff259de0),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Color(0xff259de0),
          tabs: [
          Tab(
   text: "Winnings",
          ),
          Tab(
   text: "Leaderboard",
          ),

          ],
          ),
          ),
            Container(height: 350,
              child: TabBarView(children: [
                Winnings(),
                Leaderboard(),

              ]),
            )
],),
    ])));
  }
}
