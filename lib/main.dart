import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Widgets de base')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello Flutter!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset('assets/images/lunette4.png'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Button pressé');
              },
              child: Text('Clique moi'),
            ),
          ],
        ),
      ),
    );
  }
}
