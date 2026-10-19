# Implementasi Struktur Data Queue Menggunakan Dart — Modul 1 Pemrograman Mobile Bahasa Pemrograman Dart

## 1. Deskripsi Praktikum
Praktikum ini merupakan implementasi struktur data **Queue (antrian)** menggunakan bahasa pemrograman **Dart**. Program ini dirancang untuk mendemonstrasikan cara kerja antrian berdasarkan prinsip **FIFO (*First In, First Out*)**, yaitu elemen yang pertama kali dimasukkan ke dalam antrian akan menjadi elemen pertama yang dikeluarkan.

Implementasi kode pada praktikum ini mencakup struktur dasar program `main()`, fungsi `print()`, tipe data dasar dan koleksi `List<int>`, struktur kontrol percabangan `if-else`, fungsi/metode, serta pemrograman berorientasi objek melalui penggunaan kelas (`class`) dan objek. 

## 2. Penjelasan Implementasi Kode
Berikut adalah penjelasan bertahap mengenai setiap bagian kode yang diimplementasikan di dalam berkas `main.dart`:

### A. Deklarasi Kelas `Queue`, Atribut Penyimpanan Data, dan Konstruktor
```dart
class Queue {
  // Atribut untuk menyimpan elemen antrian bertipe bilangan bulat (int)
  List<int> elemen = [];

  // Konstruktor untuk menginisialisasi objek Queue
  Queue();
```
- **Deklarasi Kelas `Queue`**: Menggunakan kata kunci `class Queue` sebagai cetak biru (*blueprint*) untuk membentuk objek antrian.
- **Atribut Penyimpanan Data**: Variabel `elemen` dideklarasikan dengan tipe `List<int>` dan diinisialisasi sebagai list kosong `[]`. Atribut ini berfungsi menyimpan deretan angka di dalam antrian secara berurutan.
- **Konstruktor**: Konstruktor `Queue();` digunakan saat instansiasi objek `Queue` baru dibuat di dalam fungsi `main()`.

### B. Metode `enqueue()`
```dart
  // Metode untuk menambahkan elemen baru ke bagian belakang antrian (Enqueue)
  void enqueue(int data) {
    elemen.add(data);
    print("$data berhasil ditambahkan ke antrian");
  }
```
- Metode `enqueue(int data)` menerima satu parameter bertipe `int` bernama `data`.
- Operasi `elemen.add(data)` menambahkan nilai tersebut ke posisi paling belakang pada `List<int> elemen`.
- Setelah elemen ditambahkan, fungsi `print()` menampilkan pesan konfirmasi `"{data} berhasil ditambahkan ke antrian"` menggunakan interpolasi string `$data`.

### C. Metode `dequeue()` dan Pemeriksaan Kondisi Antrian Kosong
```dart
  // Metode untuk menghapus dan mengembalikan elemen paling depan (Dequeue)
  int? dequeue() {
    if (elemen.isEmpty) {
      print("Antrian kosong");
      return null;
    } else {
      int dataDihapus = elemen.removeAt(0);
      print("$dataDihapus dihapus dari antrian");
      return dataDihapus;
    }
  }
```
- Metode `dequeue()` memiliki tipe kembalian `int?` (*nullable integer*) karena metode ini akan mengembalikan nilai elemen yang dihapus, atau `null` apabila antrian sedang kosong.
- Struktur kontrol `if (elemen.isEmpty)` memeriksa apakah list antrian kosong. Jika kosong (`true`), program menampilkan pesan `"Antrian kosong"` dan mengembalikan `null` sehingga terhindar dari kesalahan akses indeks.
- Pada blok `else` (ketika antrian memiliki isi), metode `elemen.removeAt(0)` menghapus elemen pada indeks ke-`0` (elemen paling depan yang pertama kali masuk) dan menyimpannya ke variabel `int dataDihapus`.
- Program kemudian menampilkan pesan `"$dataDihapus dihapus dari antrian"` dan mengembalikan nilai `dataDihapus`.

### D. Metode untuk Menampilkan Isi Antrian (`tampilkanAntrian()`)
```dart
  // Metode untuk menampilkan seluruh isi antrian saat ini
  void tampilkanAntrian() {
    print("Isi antrian: $elemen");
  }
}
```
- Metode `tampilkanAntrian()` mencetak kondisi terkini dari atribut `elemen` menggunakan `print("Isi antrian: $elemen")`. Representasi string bawaan dari `List<int>` di Dart secara otomatis menghasilkan format kurung siku seperti `[10, 20, 30]` atau `[20, 30]`.

### E. Fungsi `main()` dan Urutan Eksekusi Program
```dart
void main() {
  // Membuat objek antrian dari kelas Queue
  Queue antrian = Queue();

  // Menambahkan elemen 10, 20, dan 30 secara berurutan ke dalam antrian
  antrian.enqueue(10);
  antrian.enqueue(20);
  antrian.enqueue(30);

  // Menampilkan kondisi isi antrian sebelum penghapusan
  antrian.tampilkanAntrian();

  // Menghapus elemen pertama yang masuk (prinsip FIFO)
  antrian.dequeue();

  // Menampilkan kondisi isi antrian setelah penghapusan
  antrian.tampilkanAntrian();
}
```
- **Urutan Eksekusi**:
  1. Eksekusi dimulai dari `void main()`.
  2. Program membuat objek `antrian` dari kelas `Queue`.
  3. Metode `antrian.enqueue(10)`, `antrian.enqueue(20)`, dan `antrian.enqueue(30)` dipanggil secara berurutan sehingga list berisi `[10, 20, 30]` dan tiga baris pesan penambahan tampil di console.
  4. Metode `antrian.tampilkanAntrian()` dipanggil untuk mencetak `Isi antrian: [10, 20, 30]`.
  5. Metode `antrian.dequeue()` dipanggil untuk menghapus elemen indeks ke-`0` (`10`) dan mencetak `10 dihapus dari antrian`.
  6. Metode `antrian.tampilkanAntrian()` kembali dipanggil untuk mencetak kondisi akhir antrian, yaitu `Isi antrian: [20, 30]`.

## 3. Penerapan Materi Modul 1
Tabel berikut merinci hubungan antara materi pada **Modul 1 Pemrograman Mobile** dengan penerapannya di dalam kode `main.dart`:

| Materi Modul 1 | Penerapan dalam Kode | Penjelasan |
| :--- | :--- | :--- |
| **1. Pengertian Bahasa Pemrograman Dart** | Digunakan langsung sebagai bahasa pemrograman proyek | Kode ditulis menggunakan sintaksis gaya-C dan paradigma berorientasi objek Dart yang kompatibel penuh dengan DartPad. |
| **2. Struktur Dasar Program (`main()` dan `print()`)** | Digunakan langsung pada `void main()` dan seluruh pemanggilan `print()` | `void main()` menjadi titik awal jalannya simulasi, sedangkan `print()` digunakan di dalam metode kelas untuk mencetak status operasi ke console. |
| **3. Tipe Data (`int`, `String`, `bool`, `List<int>`)** | Digunakan langsung (`int`, `int?`, `List<int>`, interpolasi `String`, dan evaluasi `bool` pada `isEmpty`) | Elemen antrian disimpan dalam `List<int>`, parameter dan variabel penghapusan menggunakan `int`, serta kondisi kosong menghasilkan nilai `bool`. |
| **4. Tipe Data `double` dan `var`** | Materi pendukung (tidak digunakan dalam kode) | Dibahas pada Modul 1, namun tidak digunakan karena seluruh elemen antrian merupakan bilangan bulat dengan deklarasi tipe eksplisit `int`. |
| **5. Operasi Matematika dan Logika** | Digunakan pada evaluasi logika kondisi (`elemen.isEmpty`); operasi aritmatika sebagai materi pendukung | Pengambilan keputusan menggunakan evaluasi nilai kebenaran (`bool`) pada kondisi `if`, tanpa memerlukan perhitungan aritmatika (`+`, `-`, `*`, `/`). |
| **6. Struktur Kontrol Percabangan (`if` dan `else`)** | Digunakan langsung di dalam metode `dequeue()` | Memeriksa apakah antrian kosong (`if (elemen.isEmpty)`) sebelum menghapus elemen pertama pada blok `else`. |
| **7. Struktur Kontrol Perulangan (`for` dan `while`)** | Materi pendukung (tidak digunakan dalam kode) | Dibahas pada Modul 1, namun penambahan 3 elemen dilakukan secara sekuensial dan penampilan isi antrian cukup menggunakan interpolasi `$elemen`. |
| **8. Fungsi dan Metode** | Digunakan langsung pada `main()`, `enqueue()`, `dequeue()`, dan `tampilkanAntrian()` | Memecah logika penambahan, penghapusan, dan penampilan antrian ke dalam metode-metode terpisah yang modular. |
| **9. Kelas, Atribut, Konstruktor, dan Objek** | Digunakan langsung pada `class Queue`, atribut `elemen`, konstruktor `Queue()`, dan objek `antrian` | Mengenkapsulasi data antrian dan operasinya ke dalam kelas `Queue` serta menginstansiasinya menjadi objek `antrian`. |
| **10. Pernyataan `import`** | Materi pendukung (tidak digunakan dalam kode) | Program hanya memanfaatkan tipe data dan fungsi bawaan `dart:core` sehingga tidak memerlukan `import` pustaka tambahan seperti `dart:math`. |
| **11. Exception Handling (`try` dan `catch`)** | Materi pendukung (tidak digunakan dalam kode) | Pencegahan kesalahan saat menghapus antrian kosong sudah ditangani secara preventif dengan pemeriksaan `if (elemen.isEmpty)`. |
| **12. Konsep `async` dan `await`** | Materi pendukung (tidak digunakan dalam kode) | Seluruh operasi Queue bersifat sinkron di memori lokal dan tidak melibatkan pemanggilan jaringan, berkas, atau `Future`. |

## 4. Alur Kerja Program
Alur eksekusi program berjalan secara berurutan dari awal hingga selesai melalui tujuh tahapan berikut:
1. **Membuat objek Queue**: Program menginstansiasi objek bernama `antrian` dari kelas `Queue` dengan atribut `elemen` yang awalnya berupa list kosong `[]`.
2. **Menambahkan angka 10**: Program memanggil `antrian.enqueue(10)`. Angka `10` masuk ke indeks `0` (`[10]`), lalu console menampilkan `10 berhasil ditambahkan ke antrian`.
3. **Menambahkan angka 20**: Program memanggil `antrian.enqueue(20)`. Angka `20` ditambahkan di belakang angka `10` pada indeks `1` (`[10, 20]`), lalu console menampilkan `20 berhasil ditambahkan ke antrian`.
4. **Menambahkan angka 30**: Program memanggil `antrian.enqueue(30)`. Angka `30` ditambahkan di posisi paling belakang pada indeks `2` (`[10, 20, 30]`), lalu console menampilkan `30 berhasil ditambahkan ke antrian`.
5. **Menampilkan isi antrian**: Program memanggil `antrian.tampilkanAntrian()` untuk menampilkan seluruh elemen yang telah masuk, menghasilkan output `Isi antrian: [10, 20, 30]`.
6. **Menghapus elemen paling depan**: Program memanggil `antrian.dequeue()`. Karena antrian tidak kosong, elemen pada indeks ke-`0` (yaitu angka `10`) dihapus dari list dan console menampilkan `10 dihapus dari antrian`.
7. **Menampilkan isi antrian setelah penghapusan**: Program kembali memanggil `antrian.tampilkanAntrian()` untuk menampilkan sisa elemen di dalam antrian, menghasilkan output `Isi antrian: [20, 30]`.

## 5. Hasil Eksekusi
Berikut adalah keluaran (*output*) console dari hasil eksekusi program yang sesuai persis dengan target pada Pertemuan 1:

```text
10 berhasil ditambahkan ke antrian
20 berhasil ditambahkan ke antrian
30 berhasil ditambahkan ke antrian
Isi antrian: [10, 20, 30]
10 dihapus dari antrian
Isi antrian: [20, 30]
```

Kondisi awal antrian setelah penambahan tiga elemen secara berurutan adalah `[10, 20, 30]`, kemudian berubah menjadi `[20, 30]` setelah elemen paling depan yaitu `10` dihapus dari antrian.

## 6. Analisis Hasil
Berdasarkan hasil eksekusi di atas, dapat dianalisis bagaimana mekanisme struktur data Queue bekerja di dalam program:
1. **Mengapa Elemen 10 Dihapus Terlebih Dahulu**: Angka `10` adalah elemen pertama yang dimasukkan ke dalam antrian melalui pemanggilan `antrian.enqueue(10)` sebelum angka `20` dan `30`. Oleh sebab itu, angka `10` menempati posisi paling depan (indeks ke-`0`) pada `List<int> elemen`. Ketika metode `dequeue()` dijalankan, perintah `elemen.removeAt(0)` secara spesifik mengambil dan menghapus elemen pada indeks ke-`0`, sehingga angka `10` yang dikeluarkan terlebih dahulu.
2. **Bagaimana Urutan Elemen Dipertahankan**: Metode `elemen.add(data)` pada `enqueue()` selalu menyisipkan elemen baru di bagian paling akhir list (`10`, diikuti `20`, lalu `30`). Setelah elemen indeks ke-`0` (`10`) dihapus menggunakan `removeAt(0)`, elemen-elemen berikutnya bergeser maju satu posisi secara teratur: angka `20` berpindah menjadi elemen paling depan (indeks ke-`0` baru) dan diikuti oleh angka `30` (indeks ke-`1`).
3. **Pembuktian Prinsip FIFO (*First In, First Out*)**: Urutan masuknya data adalah `10 -> 20 -> 30`, dan saat operasi penghapusan tunggal dilakukan, elemen yang keluar adalah `10` sementara sisa antrian mempertahankan urutan masuknya yaitu `[20, 30]`. Hal ini membuktikan secara langsung prinsip **FIFO (*First In, First Out*)**, di mana elemen yang pertama kali masuk ke dalam antrian benar-benar menjadi elemen pertama yang keluar.
