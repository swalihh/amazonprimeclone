import 'package:flutter/material.dart';

class Downloads  extends StatelessWidget {
  const Downloads ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,


      appBar: AppBar(
        title: const Text('Downloads ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        
      backgroundColor: const Color.fromARGB(255, 63, 63, 63),  
      ),
      body: const Center(child: Text('N0 videos downloaded',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),
    );

  }
}