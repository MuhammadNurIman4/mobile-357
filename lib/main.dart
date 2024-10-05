import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/medicine_view.dart'; // Pastikan path benar jika file berada di folder views

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MedicineApp',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MedicineView(),
    );
  }
}