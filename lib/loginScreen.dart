import 'package:flutter/material.dart';
import 'package:todolistapp/HomeScreen.dart';

class Loginscreen extends StatefulWidget {
  Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController email = TextEditingController();

  bool ischeck = false;

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


          // check box

          Checkbox(value: ischeck,
              onChanged:(value){
            setState(() {
              ischeck = value ?? false;
            });

              }),


          // pass
          SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                builder: (context)=> Homescreen()));

          },
              child: Text("Login")

          )


        ],
      ),
    );
  }
}
