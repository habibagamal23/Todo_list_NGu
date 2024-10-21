import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});

  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Login",
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
       Image.asset("assets/back.jpg"),
          SizedBox(
            height: 50,
          ),
          TextField(
            controller: email,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("email")),

          ),

          // pass
          SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: (){

          },
              child: Text("Login")

          )


        ],
      ),
    );
  }
}
