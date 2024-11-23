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
  TextEditingController _emailController =TextEditingController();
  TextEditingController _passwordController =TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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


      body:Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
           key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText:'Email',
                ),
                validator: (String? value){
                  if (value == null || value.isEmpty){
                    return 'Enter your Email';
                  }
                  return null;
                },
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: 'Password'
                ),
               validator: (String? value) {
                 if (value?.isEmpty ?? true) {
                   return 'Enter your Email';
                 }
                 return null;
               },
              ),
              ElevatedButton(
                onPressed: () {
                  /*String email = _emailController.text;
                  String password = _passwordController.text;
                  if (email.isNotEmpty && password.isNotEmpty) {
                    print('Login succes');*/
                 if (_formKey.currentState!.validate()){
                   print('Login success');
                 }
                },
                child: Text('Tap'),
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}
