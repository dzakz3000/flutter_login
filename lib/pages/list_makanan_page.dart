import 'package:flutter/material.dart';
import 'package:flutter_first/controllers/list_makanan_controller.dart';
import 'package:flutter_first/pages/detail_makanan_page.dart';
import 'package:flutter_first/routes.dart';
import 'package:get/get.dart';


class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("List makanan")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.dataMakanan.length,
          itemBuilder: (context,index) {
            final makanan = controller.dataMakanan[index];
              return InkWell(
                onTap: () {
                  Get.toNamed(Routes.detail_makanan, arguments: makanan);
                },
                child: ListTile(title: Text(makanan.namaMakanan, style: TextStyle(fontSize: 20)),
                subtitle: Text(makanan.harga, style: TextStyle(fontSize: 15)),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            );
          },
        ),
      ),
    );
  }
}
