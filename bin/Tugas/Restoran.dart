import 'dart:io';

void main() {
  // Daftar menu makanan (Map: Nama makanan → Harga)
  Map<String, int> menuMakanan = {
    "Nasi Goreng": 20000,
    "Mie Goreng": 18000,
    "Ayam Bakar": 25000,
    "Sate Ayam": 22000,
    "Bakso": 15000,
    "Soto Ayam": 17000,
  };

  // Daftar menu minuman (Map: Nama minuman → Harga)
  Map<String, int> menuMinuman = {
    "Es Teh": 5000,
    "Es Jeruk": 7000,
    "Kopi": 8000,
    "Jus Alpukat": 12000,
    "Jus Mangga": 10000,
    "Air Mineral": 4000,
  };

  String? jawab; // variabel untuk menyimpan jawaban apakah user ingin pesan lagi

  // === Perulangan utama program menggunakan do-while ===
  do {
    List<String> pesanan = []; // list untuk menampung pesanan user
    int totalHarga = 0;        // variabel untuk menyimpan total harga pesanan

    print("===== SELAMAT DATANG DI RESTORAN BELLA =====");
    print("Silakan pilih menu makanan Anda.");

    // === Tampilkan daftar makanan ===
    print("\n--- Menu Makanan ---");
    int i = 1;
    menuMakanan.forEach((nama, harga) {
      print("$i. $nama - Rp$harga");
      i++;
    });

    // === Pemilihan makanan ===
    while (true) {
      stdout.write("Pilih makanan (nomor), atau ketik 0 jika selesai: ");
      String? input = stdin.readLineSync();
      if (input == null || input == "0") break; // keluar jika user ketik 0

      int? nomor = int.tryParse(input);
      if (nomor != null && nomor > 0 && nomor <= menuMakanan.length) {
        // Ambil nama dan harga makanan berdasarkan nomor
        String namaMenu = menuMakanan.keys.elementAt(nomor - 1);
        int hargaMenu = menuMakanan[namaMenu]!;
        pesanan.add(namaMenu);          // masukkan ke list pesanan
        totalHarga += hargaMenu;        // tambahkan ke total
        print("$namaMenu ditambahkan. Total sementara: Rp$totalHarga");
      } else {
        print("Pilihan tidak valid!");
      }
    }

    // === Tampilkan daftar minuman ===
    print("Silakan pilih menu minuman Anda.");
    print("\n--- Menu Minuman ---");
    int j = 1;
    menuMinuman.forEach((nama, harga) {
      print("$j. $nama - Rp$harga");
      j++;
    });

    // === Pemilihan minuman ===
    while (true) {
      stdout.write("Pilih minuman (nomor), atau ketik 0 jika selesai: ");
      String? input = stdin.readLineSync();
      if (input == null || input == "0") break; // keluar jika user ketik 0

      int? nomor = int.tryParse(input);
      if (nomor != null && nomor > 0 && nomor <= menuMinuman.length) {
        // Ambil nama dan harga minuman berdasarkan nomor
        String namaMenu = menuMinuman.keys.elementAt(nomor - 1);
        int hargaMenu = menuMinuman[namaMenu]!;
        pesanan.add(namaMenu);          // masukkan ke list pesanan
        totalHarga += hargaMenu;        // tambahkan ke total
        print("$namaMenu ditambahkan. Total sementara: Rp$totalHarga");
      } else {
        print("Pilihan tidak valid!");
      }
    }

    // === Ringkasan pesanan ===
    if (pesanan.isEmpty) {
      print("\nAnda tidak memesan apapun.");
    } else {
      print("\n=== Pesanan Anda ===");
      for (var item in pesanan) {
        int harga = menuMakanan[item] ?? menuMinuman[item] ?? 0;
        print("- $item (Rp$harga)");
      }
      print("Total Harga: Rp$totalHarga");

      // === Proses pembayaran ===
      while (true) {
        stdout.write("Masukkan jumlah uang pembayaran: Rp");
        String? bayarInput = stdin.readLineSync();
        int? bayar = int.tryParse(bayarInput ?? "0");

        if (bayar != null && bayar >= totalHarga) {
          // Jika uang cukup
          int kembalian = bayar - totalHarga;
          print("Pembayaran berhasil! Kembalian Anda: Rp$kembalian");
          break;
        } else {
          // Jika uang kurang
          print("Uang tidak cukup, coba lagi!");
        }
      }
    }

    // === Konfirmasi apakah ingin pesan lagi ===
    stdout.write("\nApakah Anda ingin pesan lagi? (y/n): ");
    jawab = stdin.readLineSync();

  } while (jawab != null && jawab.toLowerCase() == "y"); 
  // ulangi jika user jawab 'y'

  // Pesan penutup program
  print("===== Selamat Menikmati Hidangan Anda =====");
  print("Terima kasih telah berkunjung ke restoran kami!");
}