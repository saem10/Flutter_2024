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
        body: ListView.builder(
          itemCount: friendlist.length,
          itemBuilder: (context, index) {
            /*return Padding(
              padding: const EdgeInsets.all(16),
              child: Text(friendlist[index]),
            );
          }*/
            return ListTile(
              title: Text(friendlist[index]),
              subtitle: Text('Friend no $index'),
              trailing: Icon(Icons.arrow_forward),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.person),
              ),
              onTap: (){
                print('On tap $index');
              },

              contentPadding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 4,
              ),
              //dense: false,
              //enabled: false,

              titleTextStyle: TextStyle(fontSize: 24,color: Colors.deepOrangeAccent),
              subtitleTextStyle:TextStyle(fontSize: 12,color: Colors.deepOrangeAccent) ,
            );
          }
    ),
    );
  }


}
