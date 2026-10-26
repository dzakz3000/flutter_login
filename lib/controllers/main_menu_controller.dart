import 'package:flutter_first/menu/history_page.dart';
import 'package:flutter_first/menu/home_page.dart';
import 'package:flutter_first/menu/profile_page.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MainMenuController extends GetxController{
   final RxInt selectedIndex = 0.obs;

   void changePage(int index) {
     selectedIndex.value = index;
   }

   List<Widget> listPages = [HomePage(),HistoryPage(),ProfilePage()];
}