import 'package:flutter/material.dart';

class Leaderboard extends StatefulWidget {
  const Leaderboard({super.key});

  @override
  State<Leaderboard> createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
                leading:CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D&w=1000"),),

                title:Text("Name..",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
            ),
            Divider(thickness: 0.50,),
            ListTile(
                leading:CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D&w=1000"),),

                title:Text("Name..",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
            ),
            Divider(thickness: 0.50,),
            ListTile(
                leading:CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D&w=1000"),),

                title:Text("Name..",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
            ),
            Divider(thickness: 0.50,),
            ListTile(
                leading:CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D&w=1000"),),

                title:Text("Name..",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
            ),
            Divider(thickness: 0.50,),
            ListTile(
                leading:CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D&w=1000"),),

                title:Text("Name..",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
            ),
            Divider(thickness: 0.50,),
            ListTile(
                leading:CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D&w=1000"),),

                title:Text("Name..",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
            ),
            Divider(thickness: 0.50,),



          ],
        ),
      ),
    );
  }
}
