import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_first/components/custom_elevatedbutton.dart';
import 'package:flutter_first/components/custom_textfield.dart';
import 'package:flutter_first/components/custom_text.dart';
import 'package:flutter_first/controllers/login_controller.dart';

class LoginPageModified extends StatelessWidget {
  LoginPageModified({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () {

          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri untuk teks
            children: [
              const SizedBox(height: 10),

              CustomText(
                text: "Masuk ke Akunmu",
                fontSize: 28,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 8),
              Text(
                "Silakan masukkan username dan password untuk melanjutkan",
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),

              const SizedBox(height: 40),

              CustomTextfield(
                myHint: "Username",
                txtController: controller.txtUsername,
              ),
              const SizedBox(height: 16),

              CustomTextfield(
                myHint: "Password",
                txtController: controller.txtPassword,
              ),

              const SizedBox(height: 12),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(50, 30),
                    alignment: Alignment.centerRight,
                  ),
                  child: const Text(
                    "Lupa Password?",
                    style: TextStyle(
                      color: Color(0xFF00AA5B),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Obx(() {
                  return controller.isLoading.value
                      ? const Center(
                    child: CircularProgressIndicator(
                      color: Color(0xFF00AA5B),
                    ),
                  )
                      : CustomElevatedbutton(
                    text: "Masuk",
                    textColor: Colors.white,
                    fontSize: 18,
                    onPressed: () {
                      controller.login();
                    },
                  );
                }),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Belum punya akun? ",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: const Text(
                      "Daftar Sekarang",
                      style: TextStyle(
                        color: Color(0xFF00AA5B),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}