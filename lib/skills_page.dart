import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('My Skills', style: TextStyle(fontSize: 24)),
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