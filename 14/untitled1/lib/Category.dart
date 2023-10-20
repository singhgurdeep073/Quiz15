import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class Catid{
  final int id;
  final String name;
  final String sub;
  Catid({required this.id,required this.name,required this.sub});
  factory Catid.FromJson(Map<String,dynamic>json){
    return Catid(id: json['id'],name: json['created_at'],sub:json['categ']);

  }
}
class Cat extends StatefulWidget {
  const Cat({Key? key}) : super(key: key);

  @override
  State<Cat> createState() => _CatState();
}

Future<List<Catid>> fetchData() async{
  var url=Uri.parse("http://amazonboost.in/demo/twiz/gesss");
  final responce=await http.get(url);
  if(responce.statusCode==200){
    List listresponce=json.decode(responce.body);
    return listresponce.map((data) => Catid.FromJson(data)).toList();
  }
  else{
    throw Exception('Unexpected error occured!');
  }


}


class _CatState extends State<Cat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Category"),),
      body: Container(
        height: 110,
        width: double.infinity,
        child: FutureBuilder<List<Catid>>(
            future: fetchData(),
            builder: (context,abc){
              if(abc.hasData){
                return  ListView.builder(
                    itemCount: abc.data!.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context,int len){
                      return GestureDetector(
                        /*onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context){
                            return Subcat(id:abc.data![len].id.toString());
                          }));

                        },*/
                        child: Column(
                          children: [
                            Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(

                              children: [
                                Center(child:Text(abc.data![len].sub)),

                                Center(child:Text(abc.data![len].name)),
                                Text(abc.data![len].id.toString())
                              ],
                            ),
                          )

                        ],),
                      );

                    });
              }
              else if(abc.hasError){
                return Text(abc.error.toString());

              }
              return const LinearProgressIndicator(
                color: Colors.black87,
              );
            }

        ),
      ),
    );
  }
}
