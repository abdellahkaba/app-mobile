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
      home: UserListScreen(),
    );
  }
}

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<String> users = ["Alice", "Kaba", "Musa", "Jean"];

  final TextEditingController _controller = TextEditingController();

  void _addUser() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        users.add(_controller.text);
        _controller.clear();
      });
    }
  }

  void _deleteUser(int index) {
    setState(() {
      users.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liste des utilisateurs")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Champ pour ajouter un utilisateur
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: "Nom de l'utilisateur",
                suffixIcon: IconButton(
                  onPressed: _addUser,
                  icon: Icon(Icons.add),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Liste des utilisateurs
            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(users[index]),
                      leading: Icon(Icons.person),
                      trailing: IconButton(
                        onPressed: () => _deleteUser(index),
                        icon: Icon(Icons.delete, color: Colors.red),
                      ),
                      onTap: () {
                        // Navigation vers l'ecran de detail
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    UserDetailScreen(userName: users[index]),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Ecran de detail

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Utilisateurs')),
      body: Center(
        child: Text(
          "Bienvenue, $userName !",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
