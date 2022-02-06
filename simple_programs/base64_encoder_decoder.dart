import 'dart:convert';
import 'package:dart_clipboard/dart_clipboard.dart';
import 'package:prompts/prompts.dart' as prompts;

dynamic encode(text) {
  return base64.encode(utf8.encode(text));
}

dynamic decode(text) {
  return utf8.decode(base64Decode(text));
}

void main() {
  while (true) {
    print("[1] Encode \n[2] Decode \n[3] Exit");
    int? mode = int.parse(prompts.get("Select mode"));
    if (mode == 1) {
      dynamic txt = prompts.get("Enter text to encode");
      dynamic encodedTxt = base64Encode(utf8.encode(txt));
      print(encodedTxt);
      Clipboard.setContents(encodedTxt);
      print("Copied to clipboard.");
    } else if (mode == 2) {
      dynamic txt = prompts.get("Enter string to decode");
      dynamic decodedTxt = utf8.decode(base64.decode(txt));
      print(decodedTxt);
      Clipboard.setContents(decodedTxt);
      print("Cpoied to cliboard.");
    } else if (mode == 3) {
      break;
    } else {
      print("Choose a valid option");
    }
  }
}
