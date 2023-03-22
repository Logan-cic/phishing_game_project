import 'package:flutter/material.dart';

class GmailEmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('G'),
            ),
            title: Text('Google'),
            subtitle: Text('Your Google verification code'),
            trailing: Text('5:30 PM'),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('F'),
            ),
            title: Text('Facebook'),
            subtitle: Text('Reset your password'),
            trailing: Text('4:50 PM'),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Text('T'),
            ),
            title: Text('Twitter'),
            subtitle: Text('Your Twitter password reset link'),
            trailing: Text('3:20 PM'),
          ),
          Divider(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}