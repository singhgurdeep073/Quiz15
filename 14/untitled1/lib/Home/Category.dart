import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled1/Home/JoinPage.dart';
import 'package:untitled1/Home/SubCategory.dart';
class Imageslider{
  final String img;
  Imageslider({required this.img});
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

List<Imageslider>img=[
  Imageslider(img: "images/S1.jpeg"),
  Imageslider(img: "images/S2.jpeg"),
  Imageslider(img: "images/S3.jpeg"),
];

File? _selectedImage;





Future<void> _pickImage() async {
  final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
  if (pickedImage  != null) {
    setState(() {
      _selectedImage  = File(pickedImage .path);
    });
  }
}
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


@override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(

        key:_scaffoldKey ,
        appBar: AppBar(

          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              child: CircleAvatar(
              
                child: _selectedImage != null
                    ? CircleAvatar(
                  backgroundImage: FileImage(_selectedImage!),
                )
                    : Icon(Icons.person, color: Colors.white),
              ),
            ),
          ),


          actions: [
     Container(
       margin: EdgeInsets.only(right: 50),
        height: 70,width: 70,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/logo.png"))
        ),
      ),

    IconButton(onPressed: (){}, icon: Icon(Icons.account_balance_wallet,color: Color(0xff259de0))),
    IconButton(onPressed: (){/*
      showDialog(
       context: context,
        builder: (index)=> AlertDialog(
          backgroundColor: Colors.transparent,
        title: Container(
          height: 400,width: 400,color: Colors.white,
          child: Column(children: [Text("₹0"),
            Container(
              height:35,width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff07a76b)
              ),
              child:   Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'ADD CASH',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),),
            Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8),
                child: Divider(thickness: .50,),
              ),
            Row(
              children: [
                Text(
                  'Amount Unutilised',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:4.0),
                  child: Icon(Icons.account_circle,size: 15,),
                )
              ],
            ),
            Text("₹0"),
          ],),
        )
      ),

      );*/}, icon: Icon(Icons.notifications_none,color: Color(0xff259de0))),

  ],        iconTheme: IconThemeData(color: Color(0xff259de0),size: 30,),

           bottom: TabBar(

      labelColor:Colors.blue ,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Colors.blue,
      tabs: [
  Tab(
    child: Align(
      alignment: Alignment.center,
      child: Text("Fix Time", style: GoogleFonts.poppins(
          fontSize: 15,
          fontWeight: FontWeight.bold    ),),
    ),
  ),

  Tab(
    child: Text("Real Time", style: GoogleFonts.poppins(
      fontSize: 15,
fontWeight: FontWeight.bold    ),),
  ),


]),),
        drawer: Drawer(
        backgroundColor: Color(0xfffafafa),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
                height: 90,color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: _pickImage,
                            child:CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.grey,
                              backgroundImage: _selectedImage != null
                                  ? FileImage(_selectedImage!)
                                  : null,
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0,left: 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("abc@gmail.com",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                              Text("Your Name..",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                              Text("Level 0",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ],),
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon:Icon(Icons.arrow_right,size: 40,color: Colors.grey,))

                    ],
                  ),
                )),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text(
                'Notifications',

              ),
              trailing: Container(height: 30,width: 30,
               decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12)),
                child: Center(child: Text("0",style: TextStyle(color: Colors.white,fontSize: 14),)),)
            ),
            ListTile(
                leading: Icon(Icons.account_balance_wallet,color: Colors.black,),
                title: Text(
                  'Wallet',

                ),
                trailing: Text("₹677.00",style: TextStyle(color: Colors.black,fontSize: 14),)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [ Container(height: 40,width:130,
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12)),
              child: Center(child: Text("Deposit",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),),
              Container(height: 40,width:130,
                decoration: BoxDecoration(color: Color(0xff4cb050),borderRadius: BorderRadius.circular(12)),
                child: Center(child: Text("Withdraw",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),)
            ],),
            Card(
              color: Color(0xfffefefe),
              child:  ListTile(
                leading: Icon(Icons.account_balance_wallet,color: Colors.grey,),
                title: Text(
                  'twiz15 Marking System',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

                ),
            ),),
            Card(
              color: Color(0xfffefefe),
              child:  ListTile(
                leading: Icon(Icons.question_mark_outlined,color: Colors.grey,),
                title: Text(
                  'How to Participate?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

                ),
              ),),
            Card(
              color: Color(0xfffefefe),
              child:  ListTile(
                leading: Icon(Icons.mail,color: Colors.grey,),
                title: Text(
                  'Support & FAQs',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

                ),
              ),),
            Card(
              color: Color(0xfffefefe),
              child:  ListTile(
                leading: Icon(Icons.share,color: Colors.grey,),
                title: Text(
                  'Share App',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

                ),
              ),),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Legal",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 16),),
                ),
              ],
            ),
            Card(
              color: Color(0xfffefefe),
              child:  ListTile(
                leading: Text(
                  'Privacy Policy',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),

                ),

              ),),
            Card(
              color: Color(0xfffefefe),
              child:  ListTile(
                leading: Text(
                  'Terms & Conditions',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),

                ),

              ),),
            Padding(
              padding: const EdgeInsets.only(top: 25.0,left: 5,right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 40,width:130,
                    decoration: BoxDecoration(color: Color(0xff4cb050),borderRadius: BorderRadius.circular(12)),
                    child: Center(child: Text("Check for Update",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),)),),
                  Text("v1.0.6")
                ],),
            ),
          ],),
        ),
      ),
         body: SingleChildScrollView(
  child:   Column(children: [
   
           Container(
    margin: EdgeInsets.all(4),
    child:   CarouselSlider.builder(
      itemCount: img.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return Padding(
          padding: const EdgeInsets.only(left: 4.0,right: 4,top: 4),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage(img[index].img),fit: BoxFit.cover)
              ),
              ),
        );
      },
      options: CarouselOptions(
        height: 90,
        aspectRatio: 9 / 9,
        viewportFraction: 1,
        initialPage: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
    ),
  ),
           Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Upcoming Quiz..',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ],
    ),
           Column(
             children: [
               InkWell(
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context){
                     return Pool();
                   }));
                 },
                 child: Container(
                   height: 133,width: 350,
                   decoration: BoxDecoration(
                       border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                       borderRadius: BorderRadius.circular(10)
      ),
                   child: Column(
                     children: [
                     Padding(
                       padding: const EdgeInsets.only(right: 8.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                         Container(height: 36,
                           width: 110,
                           decoration: BoxDecoration(
                               color: Color(0xffe3e7ed),
                               borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                           ),
                           child: Center(
                             child: Text(
                               "UPSC",
                               style: GoogleFonts.poppins(
                                 textStyle: Theme.of(context).textTheme.displayLarge,
                                 fontSize: 16,
                                 fontWeight: FontWeight.w500,
                               ),
                             ),
                           ),
                         ), Container(
                             height:25,width: 120,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 color: Color(0xff07a76b),
                               border: Border.all(color:Color(0xff07a76b), )
                             ),
                             child:   Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text(
                                   'Competitions',
                                   style: GoogleFonts.poppins(
                                     fontSize: 12,
                                     fontWeight: FontWeight.w400,
                                     fontStyle: FontStyle.normal,
                                   ),
                                 ),
                                 SizedBox(width: 10,),
                                 Container(color: Colors.white,height: 25,width: 25,
                                   child: Center(
                                     child: Text(
                                       '4',
                                       style: GoogleFonts.poppins(
                                         fontSize: 18,
                                         color: Colors.blue,
                                         fontWeight: FontWeight.w700,
                                         fontStyle: FontStyle.normal,
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),),
                       ],),
                     ),
                     SizedBox(
                       height: 3,
                     ),
                     Divider(thickness: 0.50,),
                     Padding(
                       padding: const EdgeInsets.only(left: 8.0,right: 8),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Win Cash",style: TextStyle(fontSize: 16,color: Colors.green,fontWeight: FontWeight.bold),),
                              Text("Prize Pool ",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                            ],
                          ),
                           Icon(CupertinoIcons.right_chevron)
                         ],
                       ),
                     ),
                       Container(
                         margin: EdgeInsets.only(top: 4),
                         height: 35,width: MediaQuery.of(context).size.width*1,
                       decoration: BoxDecoration(
                           color: Color(0xffd4d4d4),
                           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(children: [
                            Icon(Icons.sign_language_sharp,color: Colors.blue,size: 17,),
                            Text("English",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),


                          ],),
                          Row(children: [
                            Icon(Icons.alarm_on,color: Colors.blue,size: 17,),
                            Text("1 H 0 M",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),


                          ],),
                        ],),
                      ), )

                   ],),),
               ),
               SizedBox(height:9),
               InkWell(
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context){
                     return Pool();
                   }));
                 },
                 child: Container(
                   height: 133,width: 350,
                   decoration: BoxDecoration(
                       border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                       borderRadius: BorderRadius.circular(10)
                   ),
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(height: 36,
                               width: 110,
                               decoration: BoxDecoration(
                                   color: Color(0xffe3e7ed),
                                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                               ),
                               child: Center(
                                 child: Text(
                                   "UPSC",
                                   style: GoogleFonts.poppins(
                                     textStyle: Theme.of(context).textTheme.displayLarge,
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500,
                                   ),
                                 ),
                               ),
                             ), Container(
                               height:25,width: 120,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(5),
                                   color: Color(0xff07a76b),
                                   border: Border.all(color:Color(0xff07a76b), )
                               ),
                               child:   Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text(
                                     'Competitions',
                                     style: GoogleFonts.poppins(
                                       fontSize: 12,
                                       fontWeight: FontWeight.w400,
                                       fontStyle: FontStyle.normal,
                                     ),
                                   ),
                                   SizedBox(width: 10,),
                                   Container(color: Colors.white,height: 25,width: 25,
                                     child: Center(
                                       child: Text(
                                         '4',
                                         style: GoogleFonts.poppins(
                                           fontSize: 18,
                                           color: Colors.blue,
                                           fontWeight: FontWeight.w700,
                                           fontStyle: FontStyle.normal,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ],
                               ),),
                           ],),
                       ),
                       SizedBox(
                         height: 3,
                       ),
                       Divider(thickness: 0.50,),
                       Padding(
                         padding: const EdgeInsets.only(left: 8.0,right: 8),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Win Cash",style: TextStyle(fontSize: 16,color: Colors.green,fontWeight: FontWeight.bold),),
                               Text("Prize Pool ",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                             ],
                           ),
                             Icon(CupertinoIcons.right_chevron)
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(top: 4),
                         height: 35,width: MediaQuery.of(context).size.width*1,
                         decoration: BoxDecoration(
                             color: Color(0xffd4d4d4),
                             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8))),
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(children: [
                                 Icon(Icons.sign_language_sharp,color: Colors.blue,size: 17,),
                                 Text("English",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),


                               ],),
                               Row(children: [
                                 Icon(Icons.alarm_on,color: Colors.blue,size: 17,),
                                 Text("1 H 0 M",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),


                               ],),
                             ],),
                         ), )

                     ],),),
               ),
               SizedBox(height:9),
               InkWell(
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context){
                     return Pool();
                   }));
                 },
                 child: Container(
                   height: 133,width: 350,
                   decoration: BoxDecoration(
                       border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                       borderRadius: BorderRadius.circular(10)
                   ),
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(height: 36,
                               width: 110,
                               decoration: BoxDecoration(
                                   color: Color(0xffe3e7ed),
                                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                               ),
                               child: Center(
                                 child: Text(
                                   "UPSC",
                                   style: GoogleFonts.poppins(
                                     textStyle: Theme.of(context).textTheme.displayLarge,
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500,
                                   ),
                                 ),
                               ),
                             ), Container(
                               height:25,width: 120,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(5),
                                   color: Color(0xff07a76b),
                                   border: Border.all(color:Color(0xff07a76b), )
                               ),
                               child:   Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text(
                                     'Competitions',
                                     style: GoogleFonts.poppins(
                                       fontSize: 12,
                                       fontWeight: FontWeight.w400,
                                       fontStyle: FontStyle.normal,
                                     ),
                                   ),
                                   SizedBox(width: 10,),
                                   Container(color: Colors.white,height: 25,width: 25,
                                     child: Center(
                                       child: Text(
                                         '4',
                                         style: GoogleFonts.poppins(
                                           fontSize: 18,
                                           color: Colors.blue,
                                           fontWeight: FontWeight.w700,
                                           fontStyle: FontStyle.normal,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ],
                               ),),
                           ],),
                       ),
                       SizedBox(
                         height: 3,
                       ),
                       Divider(thickness: 0.50,),
                       Padding(
                         padding: const EdgeInsets.only(left: 8.0,right: 8),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Win Cash",style: TextStyle(fontSize: 16,color: Colors.green,fontWeight: FontWeight.bold),),
                               Text("Prize Pool ",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                             ],
                           ),
                             Icon(CupertinoIcons.right_chevron)
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(top: 4),
                         height: 35,width: MediaQuery.of(context).size.width*1,
                         decoration: BoxDecoration(
                             color: Color(0xffd4d4d4),
                             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8))),
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(children: [
                                 Icon(Icons.sign_language_sharp,color: Colors.blue,size: 17,),
                                 Text("English",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),


                               ],),
                               Row(children: [
                                 Icon(Icons.alarm_on,color: Colors.blue,size: 17,),
                                 Text("1 H 0 M",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),


                               ],),
                             ],),
                         ), )

                     ],),),
               ),
               SizedBox(height:9),
               InkWell(
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context){
                     return Pool();
                   }));
                 },
                 child: Container(
                   height: 133,width: 350,
                   decoration: BoxDecoration(
                       border: Border.all(color: Color(0xffe5e5e5),width: 1.50 ),
                       borderRadius: BorderRadius.circular(10)
                   ),
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(height: 36,
                               width: 110,
                               decoration: BoxDecoration(
                                   color: Color(0xffe3e7ed),
                                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),topLeft: Radius.circular(12))
                               ),
                               child: Center(
                                 child: Text(
                                   "UPSC",
                                   style: GoogleFonts.poppins(
                                     textStyle: Theme.of(context).textTheme.displayLarge,
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500,
                                   ),
                                 ),
                               ),
                             ), Container(
                               height:25,width: 120,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(5),
                                   color: Color(0xff07a76b),
                                   border: Border.all(color:Color(0xff07a76b), )
                               ),
                               child:   Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text(
                                     'Competitions',
                                     style: GoogleFonts.poppins(
                                       fontSize: 12,
                                       fontWeight: FontWeight.w400,
                                       fontStyle: FontStyle.normal,
                                     ),
                                   ),
                                   SizedBox(width: 10,),
                                   Container(color: Colors.white,height: 25,width: 25,
                                     child: Center(
                                       child: Text(
                                         '4',
                                         style: GoogleFonts.poppins(
                                           fontSize: 18,
                                           color: Colors.blue,
                                           fontWeight: FontWeight.w700,
                                           fontStyle: FontStyle.normal,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ],
                               ),),
                           ],),
                       ),
                       SizedBox(
                         height: 3,
                       ),
                       Divider(thickness: 0.50,),
                       Padding(
                         padding: const EdgeInsets.only(left: 8.0,right: 8),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Win Cash",style: TextStyle(fontSize: 16,color: Colors.green,fontWeight: FontWeight.bold),),
                               Text("Prize Pool ",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                             ],
                           ),
                             Icon(CupertinoIcons.right_chevron)
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(top: 4),
                         height: 35,width: MediaQuery.of(context).size.width*1,
                         decoration: BoxDecoration(
                             color: Color(0xffd4d4d4),
                             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8))),
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(children: [
                                 Icon(Icons.sign_language_sharp,color: Colors.blue,size: 17,),
                                 Text("English",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),


                               ],),
                               Row(children: [
                                 Icon(Icons.alarm_on,color: Colors.blue,size: 17,),
                                 Text("1 H 0 M",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),


                               ],),
                             ],),
                         ), )

                     ],),),
               ),
               SizedBox(height:9),

             ],
           )
  ],),
),
      ),
    );
  }
}
