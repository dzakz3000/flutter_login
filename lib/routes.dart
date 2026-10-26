import 'package:flutter_first/pages/confirm_registration_page.dart';
import 'package:flutter_first/pages/detail_makanan_page.dart';
import 'package:flutter_first/pages/list_makanan_page.dart';
import 'package:flutter_first/pages/registration_page.dart';
import 'package:flutter_first/pages/main_menu.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";
  static const String main_menu = "/main_menu";
  //dll

  static final myPages = [
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirm_registration, page: ()=> ConfirmRegistrationPage()),
    GetPage(name: list_makanan, page: ()=> ListMakananPage()),
    GetPage(name: detail_makanan, page: ()=> DetailMakananPage()),
    GetPage(name: main_menu, page: ()=> MainMenu()),
  ];
}