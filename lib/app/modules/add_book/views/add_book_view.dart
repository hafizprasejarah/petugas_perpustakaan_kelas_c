import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_book_controller.dart';

class AddBookView extends GetView<AddBookController> {
  const AddBookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddBookView'),
        centerTitle: true,
      ),
      body:  Center(
        child: Form(
            key: controller.formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.judulController,
                  decoration: InputDecoration(
                    hintText: 'Judul',
                  ),
                  validator: (value) {
                    if (value!.length < 2) {
                      return 'Judul';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.penulisController,
                  decoration: InputDecoration(
                    hintText: 'Penulis',
                  ),
                  validator: (value) {
                    if (value!.length < 2) {
                      return 'Penulis';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.penerbitController,
                  decoration: InputDecoration(
                    hintText: 'Penerbit',
                  ),
                  validator: (value) {
                    if (value!.length < 2) {
                      return 'Penerbit';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.tahun_terbitController,
                  decoration: InputDecoration(
                    hintText: 'Tahun Terbit',
                  ),
                  validator: (value) {
                    if (value!.length < 2) {
                      return 'Tahun Terbit';
                    }
                    return null;
                  },
                ),
                Obx(() => controller.loading.value
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                    onPressed: () {
                      controller.add();
                    },
                    child: Text('Tambah')))
              ],
            )),
      ),
    );
  }
}
