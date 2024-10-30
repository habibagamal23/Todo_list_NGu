import 'package:flutter/material.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  TextEditingController title = TextEditingController();
  TextEditingController desc = TextEditingController();

  List<Map<String, String>> myNotes = [
    {'title': 'Flutter', 'content': 'credit hours 3 '},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("No Notes")],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Add New Notes"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: title,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("Title ")),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: desc,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("content")),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancel")),
                    TextButton(
                        onPressed: () {
                          print("add notes");
                          setState(() {
                            myNotes.add(
                                {'title': title.text, 'content': desc.text});
                          });
                          print(myNotes);


                        },
                        child: Text("Add"))
                  ],
                );
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
