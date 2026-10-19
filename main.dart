// Implementasi Struktur Data Queue (FIFO - First In, First Out)
// Pertemuan 1 Pemrograman Mobile — Bahasa Pemrograman Dart

class Queue {
  // Atribut untuk menyimpan elemen antrian bertipe bilangan bulat (int)
  List<int> elemen = [];

  // Konstruktor untuk menginisialisasi objek Queue
  Queue();

  // Metode untuk menambahkan elemen baru ke bagian belakang antrian (Enqueue)
  void enqueue(int data) {
    elemen.add(data);
    print("$data berhasil ditambahkan ke antrian");
  }

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

  // Metode untuk menampilkan seluruh isi antrian saat ini
  void tampilkanAntrian() {
    print("Isi antrian: $elemen");
  }
}

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
