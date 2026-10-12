import 'package:flutter_first/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController{
  //data makanan berupa list, masih hardcoded

  List<MakananModel> dataMakanan = [
    MakananModel(namaMakanan: "Soto ayam", harga: "10.000"),
    MakananModel(namaMakanan: "Ca kangkung", harga: "8.000"),
    MakananModel(namaMakanan: "Ayam geprek", harga: "12.000"),
    MakananModel(namaMakanan: "Sate kambing", harga: "15.000"),
    MakananModel(namaMakanan: "Gulai kambing", harga: "14.000"),
  ];
}