import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasilHitung = 0.0.obs;

  bool _isInputValid(String input1, String input2) {
    if (input1.isEmpty || input2.isEmpty) {
      Get.snackbar(
        "Peringatan",
        "Angka 1 dan Angka 2 tidak boleh kosong!",
        backgroundColor: Colors.orange,
        colorText: Colors.white,
      );
      return false;
    }
    return true;
  }

  void tambah(String input1, String input2) {
    if (!_isInputValid(input1, input2)) return;

    double angka1 = double.parse(input1);
    double angka2 = double.parse(input2);

    double hasiltambah = angka1 + angka2;
    hasilHitung.value = hasiltambah;
    Get.snackbar("hasil tambah", "hasilnya $hasiltambah");
  }

  void kurang(String input1, String input2) {
    if (!_isInputValid(input1, input2)) return;

    double angka1 = double.parse(input1);
    double angka2 = double.parse(input2);

    double hasilkurang = angka1 - angka2;
    hasilHitung.value = hasilkurang;
    Get.snackbar("hasil kurang", "hasilnya $hasilkurang");
  }

  void kali(String input1, String input2) {
    if (!_isInputValid(input1, input2)) return;

    double angka1 = double.parse(input1);
    double angka2 = double.parse(input2);

    double hasilkali = angka1 * angka2;
    hasilHitung.value = hasilkali;
    Get.snackbar("hasil kali", "hasilnya $hasilkali");
  }

  void bagi(String input1, String input2) {
    if (!_isInputValid(input1, input2)) return;

    double angka1 = double.parse(input1);
    double angka2 = double.parse(input2);

    if (angka2 == 0) {
      Get.snackbar(
        "Peringatan",
        "Tidak bisa dibagi dengan angka 0!",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    hasilHitung.value = angka1 / angka2;
  }
}