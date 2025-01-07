import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CatFactsApp extends StatefulWidget{
  const CatFactsApp({super.key});

  @override
  _CatFactsAppState createState() => _CatFactsAppState();
} 

class _CatFactsAppState extends State<CatFactsApp>{
  String _catFact = "Press the button to load a cat fact!";

  Future<void> fetchCatFact() async{
    const String url = 'https://catfact.ninja/fact';

    try{
      final response = await http.get(Uri.parse(url));

      if(response.statusCode == 200){
        final Map<String, dynamic> data = jsonDecode(response.body);
        setState((){
          _catFact = data['fact'];
        });
      } else {
        setState((){
          _catFact = "Failed to load fact!";
        });
      }
    }
    catch (e){
      _catFact = "Error";
    }
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Cat Facts")),
      body: Center(  
        child: Padding(  
          padding: const EdgeInsets.all(16),
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _catFact,
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: fetchCatFact, child: const Text("Get a Cat Fact"))
            ],
          )
        ),
      )
    );
  }
}