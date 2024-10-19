import 'package:flutter/material.dart';
void main(){
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Home screen'),
          backgroundColor: Colors.cyan,
        ),
        body:
        Column(
          children: [
            Image.asset('Images/natural.jpg',
              width:400,
              height:400,
              //fit: BoxFit.contain,
              //alignment: Alignment.bottomCenter,
            ),
            Image.network('https://img-va.myshopline.com/image/store/1688111732036/-8-2.jpeg?w=1000&h=1000',
              width:200,
              height:200,
            ),
          ],
        ),

      ),
    );

  }
}
