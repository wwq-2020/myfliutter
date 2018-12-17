import 'package:flutter/material.dart';

class Simple extends StatelessWidget {
  final String text;

  Simple( this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.blue,
//      ),
      body: Center(child:Text(text)),
    );
  }
}
