import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageServices {
  File? imageFile;
  final State state;
  double aspectRatio = 1.0;
  void Function() refreshFunction;

  ImageServices(this.state, this.refreshFunction);
  Future<void> imageFromGallery(BuildContext context) async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null && context.mounted) {
      imageFile = File(image.path);

      refreshFunction.call();

      Navigator.of(context).pop();
    }
  }

  Future<void> imageFromCamera(BuildContext context) async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null && context.mounted) {
      imageFile = File(image.path);
      // ignore: invalid_use_of_protected_member
      state.setState(() {});
      Navigator.of(context).pop();
    }
  }

  void showOptionImage(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Make a choice"),
        content: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.image),
                title: const Text("Gallery"),
                onTap: () => imageFromGallery(context),
              ),
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text("Camera"),
                onTap: () => imageFromCamera(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
