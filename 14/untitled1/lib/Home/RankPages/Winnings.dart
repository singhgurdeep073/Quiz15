import 'package:flutter/material.dart';

class Winnings extends StatefulWidget {
  const Winnings({super.key});

  @override
  State<Winnings> createState() => _WinningsState();
}

class _WinningsState extends State<Winnings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading:Text("1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),

              trailing:Text("₹6,900",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
            ),
            Divider(thickness: 0.50,),
            ListTile(
                leading:Text("2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),

                trailing:Text("₹5,900",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
            ),
            Divider(thickness: 0.50,),
            ListTile(
                leading:Text("3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),

                trailing:Text("₹3,900",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
            ),
            Divider(thickness: 0.50,),
            ListTile(
                leading:Text("1"),

                trailing:Text("₹6,900")
            ),
            Divider(thickness: 0.50,), ListTile(
                leading:Text("1"),

                trailing:Text("₹6,900")
            ),
            Divider(thickness: 0.50,), ListTile(
                leading:Text("1"),

                trailing:Text("₹6,900")
            ),
            Divider(thickness: 0.50,), ListTile(
                leading:Text("1"),

                trailing:Text("₹6,900")
            ),
            Divider(thickness: 0.50,), ListTile(
                leading:Text("1"),

                trailing:Text("₹6,900")
            ),
            Divider(thickness: 0.50,),




          ],
        ),
      ),
    );
  }
}
