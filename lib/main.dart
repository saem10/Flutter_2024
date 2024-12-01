import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Cheta',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  List<String> friendlist = [
    'Saem',
    'Saem',
    'Saem',
    'Saem',
    'Saem',
    'Saem',
    'Saem',
    'Saem',
    'Hasan',
    'Arup',
    'Arup',
    'Arup',
    'Arup',
    'Arup',
    'Arup',
    'Arup',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.blueGrey,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
            IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          ],
          //leading: Icon(Icons.add),
        ),
      body:
      /*ListView.builder(
        itemCount: friendlist.length,
          itemBuilder: (BuildContext context, int index){
        return Column(
          children: [
            Text(friendlist[index]),
            Divider(
              height: 12,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),

          ],
        );
      }),*/
      ListView.separated(
          itemCount: friendlist.length,
          itemBuilder:(BuildContext context, int index){
            return Column(
              children: [
                Text(friendlist[index]),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index){
            return Divider(
              color: Colors.red,
              indent: 10,
              endIndent: 10,
            );
          })



    );
  }
}
