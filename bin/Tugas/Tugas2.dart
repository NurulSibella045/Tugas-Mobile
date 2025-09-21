void main() {
  // Data karyawan (langsung diisi tanpa input manual)
  String nama = "Budi";
  int jamKerja = 40;
  double upahPerJam = 50000;
  bool statusTetap = false; // true = tetap, false = kontrak

  // Hitung gaji bersih
  double gajiBersih;
  if (statusTetap) {
    gajiBersih = jamKerja * upahPerJam * 0.90; // potong 10%
  } else {
    gajiBersih = jamKerja * upahPerJam * 0.95; // potong 5%
  }

  // Cetak hasil
  cetakSlipGaji(nama, statusTetap, gajiBersih);
}

void cetakSlipGaji(String nama, bool statusTetap, double gajiBersih) {
  print("===== Slip Gaji Karyawan =====");
  print("Nama Karyawan : $nama");
  print("Status        : ${statusTetap ? "Tetap" : "Kontrak"}");
  print("Gaji Bersih   : Rp ${gajiBersih.toStringAsFixed(2)}");
}
