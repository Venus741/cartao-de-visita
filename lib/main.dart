import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF252525),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("imagens/wolf_logo.png"),
              ), const Text("Venícios Tenório", 
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, 
                  fontFamily: 'Genos', color: Colors.white),),
              
              const Text("ESTUDANTE DE FLUTTER", 
                style: TextStyle
                (fontSize: 20, fontFamily: 'SourceSans3', color: Colors.white)),

              SizedBox(width: 200, height: 75, child: Divider(color: Colors.white,),),

              Card(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

                child: const Padding(
                  padding: EdgeInsets.all(0),
                  child: ListTile(
                    leading: Icon(Icons.phone, size: 30, color: Color(0xFF252525),),
                    title: 
                    Text("82 996897552", 
                    style: TextStyle(color: Color(0xFF252525), fontSize: 20, fontFamily: 'SourceSans3')),)
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

                child: const Padding(
                  padding: EdgeInsets.all(0),
                  child: ListTile(
                    leading: Icon(Icons.mail_outline_outlined, size: 30, color: Color(0xFF252525),),
                    title: 
                    Text("veniciostenorio1@gmail.com",
                    style: TextStyle(color: Color(0xFF252525), fontSize: 20, fontFamily: 'SourceSans3')),)
                ),
              )
            ],
          ),
        )
      ),
      ),
    );
  }
}