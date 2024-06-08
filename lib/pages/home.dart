import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Content',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
        backgroundColor: Color.fromRGBO(83, 60, 147, 85),
      ),
      body: const Center(child: Text('Home Page'),),
    );
  }
}