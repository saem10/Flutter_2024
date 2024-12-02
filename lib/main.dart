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
      body:Column(
        children: [
          Row(
            children: [
              Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,

                margin: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.4),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0,2),
                    ),
                  ]
                ),
                child: Text('SaEm'),
              ),

              Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),

                decoration: BoxDecoration(
                  color: Colors.teal,
                  /*borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24)
                  ),*/
                  border:Border.all(color: Colors.red,width: 4),
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage('https://plus.unsplash.com/premium_photo-1672116453187-3aa64afe04ad?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D'),
                  fit: BoxFit.cover,
                    opacity:0.5,
                  ),

                ),
                child:
                Text('SAEM'),
              ),
            ],
          )
        ],

      )
    );
  }
}
