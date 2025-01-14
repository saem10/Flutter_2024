import 'package:flutter/material.dart';

//// Statefull Widget

void main(){
  runApp(SimpleApp());
}

class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),

    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child:Text('Center value is $counter') ,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        counter= counter+1;
        print(counter);
        setState(() {});
      },
      child: Icon(Icons.add),),
    );
  }
}
