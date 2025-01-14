import 'package:flutter/material.dart';

////Named Navigation, Statefull Widget


void main(){
  runApp(SimpleApp());
}

class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Home(),
      initialRoute: '/home',
      routes: {
        '/home': (context)=> Home(),
        '/profile': (context)=> Profile(),
        '/setting': (context)=> Setting(),
      },
    );
  }
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Text('Go to Profile'))
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),

      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/setting');
            //Navigator.pushNamed(context, '/setting');
          },
              child: Text('Go to Setting'))
        ],
      ),
    );
  }
}


class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),

      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
            Navigator.pushReplacementNamed(context, '/home');
          },
              child: Text('go to Home'))
        ],
      ),
    );
  }
}