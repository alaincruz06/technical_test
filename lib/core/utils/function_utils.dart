import 'dart:convert';
import 'dart:typed_data';

class FunctionUtils {
  Uint8List getUint8ListFromBase64(String base64String) {
    List<int> bytes = base64.decode(base64String);
    return Uint8List.fromList(bytes);
  }
}
