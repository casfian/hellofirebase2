import 'package:firebase_auth/firebase_auth.dart';
import 'package:hellofirebase2/authentication.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //use this to get provider variable from
    //the authentication class
    final firebaseUser = context.read<User>();

    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text("Welcome Home", style: TextStyle(fontSize: 30)),

            //display firebaseUser data
            Text(firebaseUser.email.toString()),
            Text(firebaseUser.uid.toString()),

            SizedBox(
              height: 50,
            ),
            //logout button
            ElevatedButton(
              onPressed: () {
                context.read<AuthenticationProvider>().signOut();
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
