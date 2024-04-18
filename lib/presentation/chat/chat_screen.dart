import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://st5.depositphotos.com/79151800/65507/i/450/depositphotos_655079558-stock-photo-cults-madeline-folin-brian-oblivion.jpg'),
          ),
        ),
        title: const Text('Mi amor ❤️'),
      ),
    );
  }
}
