import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('My Projects', style: TextStyle(fontSize: 24)),
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