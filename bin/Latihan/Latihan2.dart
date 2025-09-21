import 'dart:io';

void main() {
  stdout.write("Masukkan umur: ");
  int umur = int.parse(stdin.readLineSync()!);

  String kategori;
  if (umur >= 0 && umur <= 12) {
    kategori = "Anak-anak";
  } else if (umur >= 13 && umur <= 17) {
    kategori = "Remaja";
  } else if (umur >= 18 && umur <= 59) {
    kategori = "Dewasa";
  } else if (umur >= 60) {
    kategori = "Lansia";
  } else {
    kategori = "Umur tidak valid";
  }

  print("Anda termasuk kategori $kategori");
}
