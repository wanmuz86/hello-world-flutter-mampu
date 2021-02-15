import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("Welcome to My app")),
      body: Column(
        children: [
          Text("Hello World", style: TextStyle(fontSize: 30, color: Colors.red),),
          SizedBox(height: 10),
          Text("Welcome to my app!"),
          SizedBox(height: 10),
          Image.network("https://cdn.britannica.com/s:800x450,c:crop/79/189379-138-C16A98A4/video-Kuala-Lumpur-Malaysia.jpg"),
          Text("This is my first app"),
          SizedBox(height: 10),
          Text("Jom cuba lagi!"),
          Row(
            children: [
              Text("First col of my row"),
              SizedBox(width: 10,),
              Text("Second col of my row"),
              SizedBox(width: 10,),
              Text("Third col of my row")
            ],
          ),
          TextField(decoration: InputDecoration(labelText: 'What is your name'), controller: nameController,),
          FlatButton(color: Colors.yellow, onPressed: (){ print("Hello ${nameController.text}!"); }, child: Text("Press me!"))
        ],
      )
    );
  }
}
