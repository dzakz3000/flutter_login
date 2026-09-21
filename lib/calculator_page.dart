import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_first/components/custom_buttoncalculator.dart';
import 'package:flutter_first/components/custom_textfieldcalculator.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});


  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  TextEditingController txtAngka1 = TextEditingController();
  TextEditingController txtAngka2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyCalculator")),
      body: Column(
        children: [
          CustomTextfieldcalculator(
            hintText: "Angka 1",
            controller: txtAngka1,
          ),

          // 3. Gunakan CustomTextFieldCalculator
          CustomTextfieldcalculator(
            hintText: "Angka 2",
            controller: txtAngka2,
          ),

          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             CustomButtoncalculator(
                text: "+",
                onPressed: () {
                },
              ),
              CustomButtoncalculator(
                text: "-",
                onPressed: () {
                },
              ),
              CustomButtoncalculator(
                text: "x",
                onPressed: () {
                },
              ),
              CustomButtoncalculator(
                text: "/",
                onPressed: () {
                },
              ),
            ],
          ),

          const SizedBox(height: 20),

          const Text(
            "Hasil",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
