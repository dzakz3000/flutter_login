import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_first/components/custom_textfield.dart';
import 'package:flutter_first/components/custom_elevatedbutton.dart';
import 'package:flutter_first/components/custom_text.dart';
import '../routes.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController txtNamaLengkap = TextEditingController();
  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtWa = TextEditingController();

  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(text: "Registration"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextfield(
              myHint: "nama lengkap",
              txtController: txtNamaLengkap,
            ),
            const SizedBox(height: 16),
            CustomTextfield(
              myHint: "input email",
              txtController: txtEmail,
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                hintText: "Pilih Jenis Kelamin",
              ),
              value: selectedGender,
              items: ['Laki-laki', 'Perempuan'].map((String val) {
                return DropdownMenuItem<String>(
                  value: val,
                  child: CustomText(text: val),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedGender = newValue;
                });
              },
            ),
            const SizedBox(height: 16),
            CustomTextfield(
              myHint: "input no WA",
              txtController: txtWa,
            ),
            const SizedBox(height: 24),

            CustomElevatedbutton(
              text: "Submit",
              onPressed: () {
                Get.toNamed(Routes.confirm_registration, arguments: {
                  "email": txtEmail.text,
                  "jenis_kelamin": selectedGender ?? "Belum dipilih",
                  "no_wa": txtWa.text,
                  "nama_lengkap": txtNamaLengkap.text,
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}