import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('My Contacts', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Back to Home')
            )
          ],
        )
      )
    );
  }
}