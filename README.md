# Laporan Praktikum: Aplikasi Restoran Flutter

Proyek ini adalah sebuah aplikasi mobile yang dibangun menggunakan Flutter. Tujuan dari praktikum ini adalah untuk membuat antarmuka pengguna (UI) untuk aplikasi restoran sederhana yang mencakup fungsionalitas dasar seperti pendaftaran, login, dan lupa kata sandi.

## Deskripsi Proyek

Aplikasi ini dirancang sebagai prototipe UI untuk aplikasi pemesanan makanan. Fokus utama adalah pada pembuatan layout yang responsif dan fungsional untuk alur autentikasi pengguna. Saat ini, aplikasi terdiri dari beberapa halaman statis yang belum terhubung dengan logika backend atau navigasi yang kompleks.

## Fitur Utama

1.  **Halaman Registrasi**: Pengguna dapat mendaftarkan akun baru.
2.  **Halaman Login**: Pengguna yang sudah terdaftar dapat masuk ke aplikasi.
3.  **Halaman Lupa Password**: Fitur untuk mereset kata sandi pengguna.

## Tampilan Aplikasi (Hasil Praktikum)

Berikut adalah tangkapan layar dari setiap halaman utama yang telah dibuat dalam proyek ini.

### 1. Halaman Registrasi (`register.dart`)

Halaman ini adalah halaman awal aplikasi. Pengguna diminta untuk mengisi data diri seperti nama lengkap, username, email, dan password untuk membuat akun baru. Desainnya menggunakan `UnderlineInputBorder` untuk field input yang simpel dan tombol registrasi dengan sudut yang membulat.

!Tampilan Halaman Registrasi

### 2. Halaman Login (`login.dart`)

Halaman ini ditujukan bagi pengguna yang sudah memiliki akun. Terdapat field untuk username dan password. Terdapat dua tombol, "Login" dan "Register", serta tautan "Lost Password?" untuk navigasi ke halaman pemulihan akun.

!Tampilan Halaman Login

### 3. Halaman Lupa Password (`lupa_password.dart`)

Halaman ini digunakan ketika pengguna lupa dengan kata sandinya. Pengguna harus memasukkan email yang terdaftar dan kata sandi baru. Halaman ini sudah menggunakan `StatefulWidget` dan `Form` dengan `GlobalKey` untuk validasi input, memastikan email dan password diisi sesuai format yang benar sebelum proses reset dijalankan.

!Tampilan Halaman Lupa Password

## Struktur Kode

-   `main.dart`: File utama yang menjalankan aplikasi dan mengatur halaman awal ke `RegisterPage`.
-   `register.dart`: Berisi UI untuk halaman pendaftaran.
-   `login.dart`: Berisi UI untuk halaman login.
-   `lupa_password.dart`: Berisi UI dan logika dasar untuk halaman reset password.
-   `pubspec.yaml`: Mengelola dependensi proyek, seperti `flutter_svg` untuk menampilkan ikon.

## Dependensi yang Digunakan

-   `flutter_svg`: Digunakan untuk merender gambar dengan format `.svg`, seperti ikon tas belanja yang ada di setiap header halaman.

## Cara Menjalankan Proyek

1.  Pastikan Anda telah menginstal Flutter SDK di komputer Anda.
2.  *Clone* repositori ini ke direktori lokal Anda.
    ```bash
    git clone <URL_REPOSITORI_ANDA>
    ```
3.  Buka proyek di terminal atau IDE Anda (seperti VS Code atau Android Studio).
4.  Jalankan perintah berikut untuk mengunduh semua dependensi yang diperlukan:
    ```bash
    flutter pub get
    ```
5.  Pastikan folder `assets/praktikum` dengan semua gambar screenshot sudah ada di dalam proyek.
6.  Jalankan aplikasi pada emulator atau perangkat fisik dengan perintah:
    ```bash
    flutter run
    ```

---

Untuk bantuan lebih lanjut mengenai pengembangan Flutter, Anda dapat melihat dokumentasi online Flutter.
