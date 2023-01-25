import 'dart:io';

final IOService io = IOService();

class IOService {
  String get text {
    String word = stdin.readLineSync() ?? '';
    return word.trimRight();
  }

  num? get number {
    String word = stdin.readLineSync() ?? '';
    return num.tryParse(word.trim());
  }

  void console(Object? object) {
    stdout.write(object);
  }
}