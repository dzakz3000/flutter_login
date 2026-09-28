import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_first/controllers/calculator_controller.dart';
import 'package:flutter_first/components/custom_textfield.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final controller = Get.put(KalkulatorController());
  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("my kalkulator")),
      body: Column(
        children: [
          CustomTextfield(myHint: "input angka 1", txtController: txtangka1),
          CustomTextfield(myHint: "input angka 2", txtController: txtangka2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.tambah(txtangka1.text, txtangka2.text);
                },
                child: const Text("+"),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.kurang(txtangka1.text, txtangka2.text);
                },
                child: const Text("-"),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.kali(txtangka1.text, txtangka2.text);
                },
                child: const Text("x"),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.bagi(txtangka1.text, txtangka2.text);
                },
                child: const Text("/"),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Obx(
                () => Text(
              "hasil: ${controller.hasilHitung.value}",
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      )
    );
  }
}
