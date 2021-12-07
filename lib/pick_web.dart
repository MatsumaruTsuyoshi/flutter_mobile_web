import 'dart:typed_data';

import 'package:image_picker_web/image_picker_web.dart';

class Pick {
  Future<Uint8List?> pickFile() async {
    Uint8List? bytesFromPicker =
        (await ImagePickerWeb.getImage(outputType: ImageType.bytes))
            as Uint8List?;
    if (bytesFromPicker == null) return null;
    return bytesFromPicker;
  }
}
