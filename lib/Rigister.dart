import 'package:flutter/material.dart';

class Rigister extends StatefulWidget {
  const Rigister({super.key});

  @override
  State<Rigister> createState() => _RigisterState();
}

class _RigisterState extends State<Rigister> {
  var ischeck = false;
  TextEditingController namecontellr = TextEditingController();
  TextEditingController emailcontellr = TextEditingController();
  TextEditingController passcontellr = TextEditingController();
var isvisabilty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up Screen",
          style: TextStyle(
              fontSize: 25,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/log.jpg",
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller:namecontellr ,
                  decoration: InputDecoration(
                      hintText: "Name", border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailcontellr,
                  decoration: InputDecoration(
                      hintText: "Email", border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passcontellr,
                  obscureText: !isvisabilty,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          isvisabilty = !isvisabilty;
                        });
                      },
                      icon: Icon(
                          isvisabilty ?
                      Icons.visibility
                          : Icons.visibility_off),
                    ),
                      hintText: "Password", border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    print("my name is ${namecontellr.text}");
                    print("my email is ${emailcontellr.text}");
                    print("my pass is ${passcontellr.text}");
                    namecontellr.clear();
                    emailcontellr.clear();
                    passcontellr.clear();

                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      fixedSize: Size(300, 50)),
                  child: Text(
                    "Sign Up ",
                    style: TextStyle(color: Colors.white),
                  )),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.red,
                      value: ischeck,
                      onChanged: (value) {
                        setState(() {
                          ischeck = value ?? false;
                        });
                      }),
                  Text("Remmber me ")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
