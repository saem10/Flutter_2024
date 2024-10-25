import 'package:flutter/material.dart';
void main(){
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home:Home(),
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
        leading: Icon(Icons.home_filled,color: Colors.white,size: 32,),
        backgroundColor: Colors.blueGrey,
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.black,
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal
                ),
                padding:EdgeInsets.symmetric(horizontal: 48,vertical:16 ),
                shadowColor: Colors.deepOrange,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                side: BorderSide(color: Colors.black, width: 2)
              ),
              onPressed: () {},
              child: Text('Tap'),
            ),
            SizedBox(
              height: 16,
            ),
            TextButton(
                style:TextButton.styleFrom(),
                onPressed: () {}, child: Text('Text Button')),
            SizedBox(
              height: 16,
            ),
            IconButton(
                style:IconButton.styleFrom(),
                onPressed: () {}, icon: Icon(Icons.add)),
            SizedBox(
              height: 16,
            ),
            OutlinedButton(
                style:IconButton.styleFrom(),
                onPressed: () {},
                child:Text('Click here')),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                print('just one click');
              },
              onLongPress: () {
                print('On long press');
              },
              child: Text('ON Tap'),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              splashColor: Colors.green,
              onTap: () {
                print('Inkwell');
              },
              child: Text('InkWell button'),
            ),
            SizedBox(
              height: 16,
            ),
            // Alert dialog button
            ElevatedButton(
                onPressed:(){
                  showDialog(
                      barrierColor:Colors.green,
                      context: context, builder: (context){
                    return AlertDialog(
                      title: Text('Delete'),
                      content: Text('Are you sure?'),
                      actions: [
                        TextButton(onPressed:(){}, child: Text('Yes'),),
                        TextButton(onPressed:(){}, child: Text('No'),),
                      ],
                    ); });
                }, child: Text('Dialog Button')),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.black,
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

