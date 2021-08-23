import 'package:hellofirebase2/authentication.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WELCOME HOME",style:TextStyle(fontSize: 30)),
            
            
            ElevatedButton(
              onPressed: () {
                context.read<AuthenticationProvider>().signOut();
              },
              child: Text("Sign out"),
            ),
            
          ],
        ),
      ),
    );
  }
}