import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: 'Saem',
    );
  }

}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: Icon(Icons.home,color: Colors.black,size: 32,),
        title: Text('Home'),),
      body: Center(
        child: Text('Mir Saem Hasan', style: TextStyle(
            fontSize: 24, color: Colors.white
        ),),
      ),

    );
  }

}
