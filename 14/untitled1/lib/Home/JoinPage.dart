import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/Home/SubCategory.dart';
import 'package:untitled1/Home/RankPages/RankPage.dart';

class Join extends StatefulWidget {
  const Join({super.key});

  @override
  State<Join> createState() => _JoinState();
}

class _JoinState extends State<Join> {
  @override
  bool checkBox1=false;
  bool checkBox2=false;
  bool checkBox3=false;


  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
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
          bottom: TabBar(
              labelColor:Color(0xff259de0),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Color(0xff259de0),
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
                      fontWeight: FontWeight.bold    ),),
                ),
                Tab(
                  child: CircleAvatar(
                    radius: 15,
                      backgroundColor: Colors.white,
                      child: IconButton(
                          onPressed: (){}, icon: Icon(Icons.filter_alt_rounded,size: 15,))),
                )


              ]),),
        body: SingleChildScrollView(
          child:   Column(children: [

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

            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Discounted Entry',
                        style: GoogleFonts.yaldevi(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'View All >',
                        style: GoogleFonts.yaldevi(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 110.0),
                  child: Text(
                    'Up to Rs.50.0 can be utilised for the contests below',
                    style: GoogleFonts.yaldevi(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Rank()
                    ));
                  },
                  child: Container(height: 140,width: 350,
                    margin: EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(height: 36,
                              width: 120,

                              decoration: BoxDecoration(
                                  color: Color(0xffe3e7ed),
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 7.0,right: 1,top: 12),
                                child: Text(
                                  "Prize Pool",
                                  style: GoogleFonts.poppins(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 16,

                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text("Entry : ",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffb63131),fontSize: 13),),
                                  Text("Rs.49",style: TextStyle(fontSize: 13,color: Color(0xff09a866),
                                  decoration: TextDecoration.lineThrough,decorationColor:Color(0xff09a866)),),
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
                              Text(
                                '₹6 Lakhs',
                             style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
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
                       Container(
                           margin: EdgeInsets.only(top: 15),
                           height: 41,width: 350,
                       decoration: BoxDecoration(
                           color: Color(0xfff5f5f5),
                         borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),
                           bottomLeft: Radius.circular(10)
                         )
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
                       ),)


                      ],),),
                ),
                SizedBox(height:9),
                Container(height: 140,width: 350,
                  margin: EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: 36,
                            width: 120,

                            decoration: BoxDecoration(
                                color: Color(0xffe3e7ed),
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7.0,right: 1,top: 12),
                              child: Text(
                                "Prize Pool",
                                style: GoogleFonts.poppins(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 16,

                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("Entry : ",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffb63131),fontSize: 13),),
                                Text("Rs.49",style: TextStyle(fontSize: 13,color: Color(0xff09a866),
                                    decoration: TextDecoration.lineThrough,decorationColor:Color(0xff09a866)),),
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
                            Text(
                              '₹6 Lakhs',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
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
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        height: 41,width: 350,
                        decoration: BoxDecoration(
                            color: Color(0xfff5f5f5),
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10)
                            )
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
                      ),)


                    ],),),
                SizedBox(height:9),
                Container(height: 140,width: 350,
                  margin: EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: 36,
                            width: 120,

                            decoration: BoxDecoration(
                                color: Color(0xffe3e7ed),
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7.0,right: 1,top: 12),
                              child: Text(
                                "Prize Pool",
                                style: GoogleFonts.poppins(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 16,

                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("Entry : ",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffb63131),fontSize: 13),),
                                Text("Rs.49",style: TextStyle(fontSize: 13,color: Color(0xff09a866),
                                    decoration: TextDecoration.lineThrough,decorationColor:Color(0xff09a866)),),
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
                            Text(
                              '₹6 Lakhs',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
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
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        height: 41,width: 350,
                        decoration: BoxDecoration(
                            color: Color(0xfff5f5f5),
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10)
                            )
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
                      ),)


                    ],),),
                SizedBox(height:9),
                Container(height: 140,width: 350,
                  margin: EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: 36,
                            width: 120,

                            decoration: BoxDecoration(
                                color: Color(0xffe3e7ed),
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7.0,right: 1,top: 12),
                              child: Text(
                                "Prize Pool",
                                style: GoogleFonts.poppins(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 16,

                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("Entry : ",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffb63131),fontSize: 13),),
                                Text("Rs.49",style: TextStyle(fontSize: 13,color: Color(0xff09a866),
                                    decoration: TextDecoration.lineThrough,decorationColor:Color(0xff09a866)),),
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
                            Text(
                              '₹6 Lakhs',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
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
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        height: 41,width: 350,
                        decoration: BoxDecoration(
                            color: Color(0xfff5f5f5),
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10)
                            )
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
                      ),)


                    ],),),
                SizedBox(height:9),
                Container(height: 140,width: 350,
                  margin: EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: 36,
                            width: 120,

                            decoration: BoxDecoration(
                                color: Color(0xffe3e7ed),
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7.0,right: 1,top: 12),
                              child: Text(
                                "Prize Pool",
                                style: GoogleFonts.poppins(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 16,

                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("Entry : ",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffb63131),fontSize: 13),),
                                Text("Rs.49",style: TextStyle(fontSize: 13,color: Color(0xff09a866),
                                    decoration: TextDecoration.lineThrough,decorationColor:Color(0xff09a866)),),
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
                            Text(
                              '₹6 Lakhs',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
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
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        height: 41,width: 350,
                        decoration: BoxDecoration(
                            color: Color(0xfff5f5f5),
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10)
                            )
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
                      ),)


                    ],),),
                SizedBox(height:9),
                Container(height: 140,width: 350,
                  margin: EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: 36,
                            width: 120,

                            decoration: BoxDecoration(
                                color: Color(0xffe3e7ed),
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7.0,right: 1,top: 12),
                              child: Text(
                                "Prize Pool",
                                style: GoogleFonts.poppins(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 16,

                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("Entry : ",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffb63131),fontSize: 13),),
                                Text("Rs.49",style: TextStyle(fontSize: 13,color: Color(0xff09a866),
                                    decoration: TextDecoration.lineThrough,decorationColor:Color(0xff09a866)),),
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
                            Text(
                              '₹6 Lakhs',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
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
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        height: 41,width: 350,
                        decoration: BoxDecoration(
                            color: Color(0xfff5f5f5),
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10)
                            )
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
                      ),)


                    ],),),
              ],
            )
          ],),
        ),
      ),
    );
  }
}
