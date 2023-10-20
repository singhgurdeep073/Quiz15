import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController mobile= TextEditingController();
  Future<void> login() async {
    final apiUrl = "https://jsonplaceholder.typicode.com/posts";
    final response = await http.post(
      Uri.parse(apiUrl),
      body: {
        'phoneno': mobile,

      },
    );
    if (response.statusCode == 200) {
      print("Login successful. Response data: ${response.body}");
    } else {
      print("Login failed. Error: ${response.statusCode}");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: mobile,
            decoration: InputDecoration(
              hintText: "Number"
            ),
          ),
          ElevatedButton(
            onPressed: () {
              login();

            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
