import 'dart:math';

class KodeAbsenController {
  String kode = '';

  void generateKodeBaru() {
    var random = Random();
    var karakter = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    kode = '';

    for (var i = 0; i < 6; i++) {
      kode += karakter[random.nextInt(karakter.length)];
    }
  }
}