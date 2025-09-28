import 'dart:io';

void main() {
  // Meminta input skor dari pengguna
  stdout.write("Masukkan skor Anda (0 - 100): ");
  String? input = stdin.readLineSync();

  // Cek apakah input kosong/null
  if (input == null || input.isEmpty) {
    print("Error: Input tidak boleh kosong.");
    return;
  }

  // Konversi input menjadi angka
  int? skor = int.tryParse(input);

  // Validasi input (harus angka dan dalam rentang 0-100)
  if (skor == null || skor < 0 || skor > 100) {
    print("Error: Skor harus berupa angka antara 0 hingga 100.");
    return;
  }

  // Variabel untuk menyimpan nilai huruf
  String grade;

  // Menentukan grade berdasarkan skor menggunakan if-else
  if (skor >= 85 && skor <= 100) {
    grade = "A";
  } else if (skor >= 70 && skor <= 84) {
    grade = "B";
  } else if (skor >= 60 && skor <= 69) {
    grade = "C";
  } else if (skor >= 50 && skor <= 59) {
    grade = "D";
  } else {
    grade = "E";
  }

  // Menampilkan hasil
  print("Skor Anda: $skor");
  print("Nilai Anda: $grade");
}
