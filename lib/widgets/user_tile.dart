import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final String userName;
  final VoidCallback onDelete;
  final VoidCallback onTap;

  const UserTile({
    super.key,
    required this.userName,
    required this.onDelete,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(userName),
        leading: Icon(Icons.person),
        trailing: IconButton(
          icon: Icon(Icons.delete, color: Colors.red),
          onPressed: onDelete,
        ),
        onTap: onTap,
      ),
    );
  }
}
