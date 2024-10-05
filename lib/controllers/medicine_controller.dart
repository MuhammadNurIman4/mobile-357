import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MedicineController extends GetxController {
  var selectedImage = Rx<File?>(null);

  // Fungsi untuk memilih gambar dari galeri atau kamera
  Future<void> pickImage(ImageSource source) async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
    }
  }
}