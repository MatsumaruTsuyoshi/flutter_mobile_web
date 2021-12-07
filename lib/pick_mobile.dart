import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';

class Pick {
  Future<Uint8List?> pickFile() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    final uint8List = await image.readAsBytes();
    return uint8List;
  }
}
