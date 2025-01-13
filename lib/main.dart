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
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ))),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.blueGrey, foregroundColor: Colors.white),
          inputDecorationTheme: InputDecorationTheme(
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ))),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.blueGrey, foregroundColor: Colors.white),
          inputDecorationTheme: InputDecorationTheme(
            border:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
            enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
            focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          )
      ),
      themeMode: ThemeMode.dark,
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(),
              SizedBox(height: 12,),
              TextField(),
              SizedBox(height: 12,),
              TextField(),
              SizedBox(height: 12,),
              Container(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Profile();
                    }));
                  },
                  child: Text('Go to Profile')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Setting();
                    }));
                  },
                  child: Text('Go to Setting'))
            ],
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Setting()));
                },
                child: Text('Go to Setting')),
          ],
        ),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Center(
          child: Column(
        children: [

          SizedBox(height: 16,),
          Stack(
            alignment: Alignment.center,
            children: [

              Container(
                width: 100,
                height: 100,
                color: Colors.white,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.green,
              ),
              Positioned(
                bottom: .5,
                right: .5,
                width: 50,
                child: Container(
                  width: 60,
                  height: 60,
                  color: Color(0xFFF48FB1),
                ),
              ),
            ],
          ),
          SizedBox(height: 16,),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Text('Go to Profile')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                  (predicate) => false,
                );
              },
              child: Text('go to home'))
        ],
      )),
    );
  }
}
