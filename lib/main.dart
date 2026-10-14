
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Center(
            child: Text('Acak Dadu'),
          ),
          backgroundColor: Colors.red,
        ),
        body: const AcakDadu(),
      ),
    );
  }
}

class AcakDadu extends StatefulWidget {
  const AcakDadu({Key? key}) : super(key: key);

  @override
  State<AcakDadu> createState() => _AcakDaduState();
}

class _AcakDaduState extends State<AcakDadu> {
  int dadukiri = 1;
  int dadukanan = 2;

  void acakAngkaDadu() {
    setState(() {
      dadukiri = Random().nextInt(6) + 1;
      dadukanan = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: acakAngkaDadu,
                child: Image.asset(
                  'images/dice$dadukiri.png',
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: acakAngkaDadu,
                child: Image.asset(
                  'images/dice$dadukanan.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
