import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidgetPracticeScreen(),
    );
  }
}

class WidgetPracticeScreen extends StatefulWidget {
  const WidgetPracticeScreen({super.key});

  @override
  State<WidgetPracticeScreen> createState() => _WidgetPracticeScreenState();
}

class _WidgetPracticeScreenState extends State<WidgetPracticeScreen> {
  int _counter = 0;
  Color _iconColor1 = Colors.blue;
  Color _iconColor2 = Colors.red;
  Color _iconColor3 = Colors.green;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _toggleIconColor(int iconIndex) {
    setState(() {
      if (iconIndex == 1) {
        _iconColor1 = _iconColor1 == Colors.blue ? Colors.orange : Colors.blue;
      } else if (iconIndex == 2) {
        _iconColor2 = _iconColor2 == Colors.red ? Colors.purple : Colors.red;
      } else if (iconIndex == 3) {
        _iconColor3 = _iconColor3 == Colors.green ? Colors.black : Colors.green;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exercice Dynamique')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Le titre centré
            Center(
              child: Text(
                "Compteur: $_counter",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
            // Button a incrementer
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Incrémenter'),
            ),
            SizedBox(height: 50),

            //Trois icone interratives en Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () => _toggleIconColor(1),
                  icon: Icon(Icons.home, size: 40, color: _iconColor1),
                ),
                IconButton(
                  onPressed: () => _toggleIconColor(2),
                  icon: Icon(Icons.favorite, size: 40, color: _iconColor2),
                ),
                IconButton(
                  onPressed: () => _toggleIconColor(3),
                  icon: Icon(Icons.settings, size: 40, color: _iconColor3),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
