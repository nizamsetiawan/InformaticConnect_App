//ArtikelData Class
class ArtikelData {
  String? title;
  String? author;
  String? content;
  String? urlToImage;
  String? date;

//Constructor
ArtikelData(
  this.title,
  this.author,
  this.content,
  this.date,
  this.urlToImage,

  );

//dummy data
  static List<ArtikelData> PopularArtikelData = [
    ArtikelData(
      "Belajar Cepat Bahasa Pemrograman Dart",
      "Ahmad Muhardian",
      "Hello, selamat datang di “tutorial instan” belajar bahasa pemrograman Dart.",
      "12 Juli 2018",
      "https://www.petanikode.com/img/dart/dart.png"),
    ArtikelData(
      "Contoh Coding Website HTML dalam 15 Menit",
      "Dicoding Intern",
      "Hallo, teman-teman! Jumpa lagi nih. Pada kesempatan kali ini saya akan berbagi pengalaman seputar ngoding website.",
      "9 Desember 2020",
      "https://www.dicoding.com/blog/wp-content/uploads/2020/05/BLOG_Blog_9_Desember_-_Contoh_Coding_HTML_Website_Dalam_15_Menit_Socmed-1024x538.png"),
    ArtikelData(
      "Pentingnya Hosting untuk Website Sistem Informasi",
      "Budi Pekerti",
      "Pentingnya Hosting Untuk Website Sistem Informasi - apa itu web hosting?",
      "https://it.rsudsekayu.mubakab.go.id/ckfinder/userfiles/files/teknologi/1/internet.jpeg"),
  ];
}