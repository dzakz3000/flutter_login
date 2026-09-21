import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyCalculator")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(hint: Text("Angka 1"))),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(hint: Text("Angka 2")),
            ),
          ),

          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("+",
                    style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("-",
                    style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("x",
                    style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("/",
                    style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text("Hasil")
        ],
      ),
    );
  }
}
