import 'package:flutter/material.dart'; 

void main(){
  runApp(MyApp());
}

//Stateless Widget 


// Widget Created
//       ↓
// build() method runs
//       ↓
// UI rendered
//       ↓
// No internal update possible

// class MyApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Hello")),
//         body: Center(
//           child: Text(
//             "World",
//             style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//     );
//   }
// }


//stateful 

class MyApp extends StatefulWidget{
  @override
   _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {

  int counter = 0;

  void increaseCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stateful Example")),
          body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Counter Value",
                style: TextStyle(fontSize: 20),
              ),

              Text(
                "$counter",
                style: TextStyle(fontSize: 30),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: increaseCounter,
                child: Text("Increase"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
