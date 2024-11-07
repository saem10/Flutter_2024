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
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          leading: Icon(
            Icons.home_filled,
            color: Colors.white,
            size: 32,
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 16,),
              ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        barrierColor: Colors.blueGrey.shade100,
                        backgroundColor: Colors.deepOrange.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        isScrollControlled: false,
                        useSafeArea: false,
                        enableDrag: true,
                        context: context,
                        builder: (ctx) {
                          return Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Title',
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                height: 10,
                                thickness: 4,
                              ),
                              Text('Sample'),
                              Row(
                                children: [
                                  ElevatedButton(
                                      onPressed: () {}, child: Text('Save')),
                                  ElevatedButton(
                                      onPressed: () {}, child: Text('Cancel')),
                                ],
                              )
                            ],
                          );
                        });
                  },
                  child: Text('Show Dialog')),
              SizedBox(height: 16,),
              TextField(
                maxLength:100 ,

                // Show the typing value
                onChanged: (String? value){
                  print(value);
                },
                controller: TextEditingController(),
                obscureText: true,
                maxLines:1 ,
                keyboardType: TextInputType.number,
                enabled: true,
                decoration: InputDecoration(hintText: 'Phone',
                  labelText: 'Phone Number',
                  //label: Icon(Icons.add),
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.person),
                  //counterText: '',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  focusedBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green,width: 2)),
                ),

              ),
            ],
          ),
        ));
  }
}
