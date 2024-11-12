import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/projects');
              },
              child: Text('Projects'),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/skills');
              },
              child: Text('Skills'),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/contact');
              },
              child: Text('Contact'),
            ),
          ]
        )
      )
    );
  }
}