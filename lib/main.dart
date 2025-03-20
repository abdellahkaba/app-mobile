import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: WidgetPracticeScreen());
  }
}

class WidgetPracticeScreen extends StatelessWidget {
  const WidgetPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exercice de Widgets')),
      body: Padding(
        padding: EdgeInsets.all(16.0), // Ajoute un espace autour du contenu
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centre verticalement
          children: [
            Center(
              child: Text(
                "Bienvenue !",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 30), // Ajoute un espace
            // Trois boutons empilés verticalement
            Column(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Bouton 1")),
                SizedBox(height: 10), // Espace entre les boutons
                ElevatedButton(onPressed: () {}, child: Text("Bouton 2")),
                SizedBox(height: 10),
                ElevatedButton(onPressed: () {}, child: Text("Bouton 3")),
              ],
            ),

            SizedBox(height: 50), // Ajoute un espace avant les icônes
            // Trois icônes alignées horizontalement
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // Espacement égal
              children: [
                Icon(Icons.home, size: 40, color: Colors.blue),
                Icon(Icons.favorite, size: 40, color: Colors.red),
                Icon(Icons.settings, size: 40, color: Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
