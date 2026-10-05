import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController{
  late String nama_lengkap;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    nama_lengkap = arguments["nama_lengkap"];
  }
}