import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController noteController = TextEditingController();

  String note= "";
  void addTask (){
    setState(() {
      note = noteController.text;
      noteController.clear();
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      ),
      
      floatingActionButton: FloatingActionButton(onPressed: (){

        showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                title: Text("Add new Note"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Title"
                      ),
                    ),
                    TextField(),
                  ],
                ),
                actions: [
                  TextButton(onPressed: (){

                  }, child: Text("add"))
                ],
              );
            });

      } ,
      child: Icon(Icons.add),
      ),
    );
  }
}
