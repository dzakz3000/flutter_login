import 'package:flutter_first/pages/confirm_registration_page.dart';
import 'package:flutter_first/pages/list_makanan_page.dart';
import 'package:flutter_first/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  //dll

  static final myPages = [
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirm_registration, page: ()=> ConfirmRegistrationPage()),
    GetPage(name: list_makanan, page: ()=> ListMakananPage()),
  ];
}