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


  List<String>friedlist=[
    'Saem',
    'Saem',
    'Saem',
    'Saem',
    'Saem',
    'Saem',
    'Saem',
    'Saem',
    'Hasan',
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
      drawer: Drawer(
          elevation: 30,
          shadowColor: Colors.red,
          backgroundColor: Colors.blueGrey,
          width: 250,
          child: Column(
            children: [
              Text('Saem'),
              Text('Saem'),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.blue,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
      /*bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),*/
      /*body:Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
                Text('Saem Hasan'),
              ],
            ),
          ),
        ),*/
      body:Scrollbar(
        thickness: 15,
        radius: Radius.circular(10),
        interactive: true,
        /*child: ListView(
          scrollDirection: Axis.vertical,
            reverse: false,
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
            children: [
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem Hasan'),
              Text('Saem'),
              Text('Saem'),
              Text('Saem'),
              Text('Saem'),
              Text('Saem'),
              Text('Saem'),
              Text('Saem'),
              Text('Saem'),
              Text('Saem'),
              Text('Saem'),
              Text('Saem'),
              Text('Saem'),
              Text('Saem'),
            ],
          ),*/

        child: ListView.builder(
            itemCount: friedlist.length,
            itemBuilder: (context,index){
          return Padding(padding: EdgeInsets.all(16),
            child: Text(friedlist[index]),
          );
        }),
      ),

    );
  }
}
