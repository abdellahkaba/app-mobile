import 'package:flutter/material.dart';

class UserDetailScreen extends StatelessWidget {
  final String userName;

  const UserDetailScreen({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Détails Utilisateur')),
      body: Center(
        child: Text(
          "Bienvenue, $userName !",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
