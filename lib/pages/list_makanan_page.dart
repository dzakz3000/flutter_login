import 'package:flutter/material.dart';
import 'package:flutter_first/controllers/list_makanan_controller.dart';
import 'package:flutter_first/routes.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List makanan"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.dataMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.dataMakanan[index];
            return Dismissible(
              key: ValueKey(makanan.namaMakanan),
              direction: DismissDirection.startToEnd,
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                child: const Icon(Icons.delete, color: Colors.white),
              ),
              child: InkWell(
                onTap: () {
                  Get.toNamed(Routes.detail_makanan, arguments: makanan);
                },
                child: ListTile(
                  title: Text(
                    makanan.namaMakanan,
                    style: const TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    makanan.harga,
                    style: const TextStyle(fontSize: 15),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}