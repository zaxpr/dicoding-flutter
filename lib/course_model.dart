class CourseModel {
  List<Map<String, dynamic>> courses() {
    return [
      {
        "course_id": 1,
        "course_name": "Android Developer",
        "course_image": "android_dev.png",
        "course_details": <Map<String, dynamic>>[
          {
            "title": "Memulai pemrograman dengan kotlin",
            "desc":
                "Langkah pertama untuk menjadi seorang Android Developer dengan mempelajari bahasa yang direkomendasikan oleh Google."
          },
          {
            "title": "Belajar membuat aplikasi android untuk pemula",
            "desc":
                "Buat aplikasi pertamamu dengan memahami dasar-dasar membuat tampilan dan logika aplikasi."
          },
          {
            "title": "Belajar fundamental aplikasi android",
            "desc":
                "Perdalam keahlianmu di dunia pemrograman Android dengan mempelajari cara membuat aplikasi yang dapat mengambil data dari server dan menyimpannya ke dalam database."
          },
          {
            "title": "Belajar pengembangan aplikasi android intermediate",
            "desc":
                "Perdalam keahlian untuk menjadi Associate Android Developer yang fokus pada pengalaman pengguna yang lebih baik."
          },
          {
            "title": "Belajar prinsip pemrograman solid",
            "desc":
                "Memperkaya modal menjadi Android Developer dengan belajar prinsip dasar SOLID."
          },
          {
            "title": "Belajar menjadi developer expert",
            "desc":
                "Jadilah developer expert dengan belajar berbagai macam skill yang diperlukan di dunia industri, termasuk performa dan keamanan aplikasi."
          },
        ], // end course_details
      },
      {
        "course_id": 2,
        "course_name": "Front-end Developer",
        "course_image": "frontend_dev.png",
        "course_details": <Map<String, dynamic>>[
          {
            "title": "Belajar dasar pemrograman web",
            "desc": "Belajar dasar adalah langkah yang tidak boleh dilewatkan untuk mahir di bidang apa pun. Di sini, Anda akan belajar dasar dari HTML dan CSS sebagai pilar pembentuk website."
          },
          {
            "title": "Belajar dasar pemrograman javascript",
            "desc" : "Kuasai JavaScript sebagai bahasa pemrograman populer, mulai dari fundamental, sintaks dan fitur ES6, hingga konsep automation test menggunakan framework ternama."
          },
          {
            "title": "Belajar membuat Front-End web untuk pemula",
            "desc": "Seorang Front-End Web Developer harus mahir menggunakan JavaScript agar mampu membuat website yang interaktif. Di langkah ini, Anda akan belajar banyak tentang JavaScript untuk membuat websitemu menarik."
          },
          {
            "title": "Belajar fundamental Front-End Web development",
            "desc": "Agar pengalaman mengembangkan website lebih seru, gunakanlah webpack sebagai module bundler. Di sini, Anda juga akan belajar cara menampilkan data dari server sehingga aplikasi dapat menampilkan data yang dinamis."
          },
          {
            "title": "Belajar tools Front-End web intermediate",
            "desc": "Persiapkan skill-mu sebagai langkah awal untuk memasuki dunia industri dengan mempelajari tools untuk meningkatkan kualitas aplikasi web kamu. Di langkah ini, kamu akan mempelajari tools yang banyak digunakan di industri."
          },
          {
            "title": "Menjadi Front-End web developer expert",
            "desc": "Menjadi seorang expert adalah impian setiap developer. Untuk itu, Anda perlu mempelajari prinsip dan materi expert seperti testing dan performance di sini. Di langkah ini juga, Anda diarahkan untuk membuat web aplikasi yang modern."
          },
          
          
        ], // end course_details
      },
      {
        "course_id": 3,
        "course_name": "Machine Learning Developer",
        "course_image": "ml_dev.png",
        "course_details": <Map<String, dynamic>>[
          {
            "title": "Belajar dasar visualisasi data",
            "desc": "Belajar cara mempresentasikan data secara efektif sebagai langkah awal untuk menjadi seorang Machine Learning Developer."
          },
          {
            "title": "Memulai pemrograman dengan python",
            "desc": "Pelajari dasar Python sebagai tools utama untuk menjadi seorang Machine Learning Developer."
          },
          {
            "title": "Belajar machine learning untuk pemula",
            "desc": "Belajar konsep dasar algoritma machine learning dan buat model machine learning pertamamu."
          },
          {
            "title": "Belajar pengembangan machine learning",
            "desc": "Perkaya wawasanmu dengan belajar pengimplementasian machine learning dalam lingkup industri."
          },
          {
            "title": "Machine learning tahapan",
            "desc": "Bangun portofoliomu dengan belajar penerapan machine learning dalam real-world projects."
          },
          {
            "title": "Machine learning operations (MLOps)",
            "desc": "Pelajari proses pengembangan dan pengoperasian sistem machine learning dalam lingkup produksi dengan menerapkan berbagai prinsip MLOps."
          },
          
        ], // end course_details
      },
      {
        "course_id": 4,
        "course_name": "Back-end Developer",
        "course_image": "backend_dev.png",
        "course_details": <Map<String, dynamic>>[
          {
            "title": "Cloud practitioner essentials (Belajar dasar AWS cloud)",
            "desc": "Belajar dasar-dasar AWS Cloud, mulai dari konsep cloud hingga cara membangun arsitektur yang baik."
          },
          {
            "title": "Belajar dasar pemrograman javascript",
            "desc": "Kuasai JavaScript sebagai bahasa pemrograman populer, mulai dari fundamental, sintaks dan fitur ES6, hingga konsep automation test menggunakan framework ternama."
          },
          {
            "title": "Belajar membuat aplikasi Back-End untuk pemula",
            "desc": "Pahami dasar-dasar dalam membangun RESTful API, mulai dari HTTP server, routing, hingga membangun Back-End untuk aplikasi yang nyata."
          },
          {
            "title": "Architecting on AWS (Membangun arsitektur clous AWS)",
            "desc": "Bangun arsitektur cloud pertamamu di AWS, mulai dari yang sederhana dengan Amazon S3 hingga yang canggih dengan serverless."
          },
          {
            "title": "Belajar fundamental aplikasi Back-End",
            "desc": "Dalami teknologi dalam membangun RESTful API yang canggih, seperti Database, Storage, hingga Authentication dan Authorization."
          },
          {
            "title": "Menjadi Back-End developer expert",
            "desc": "Mahir di bidang Back-End dengan mempelajari teknik Automation Testing, Clean Architecture, CI/CD, Security, dan Scalability dalam membangun RESTful API berskala industri."
          },
          
        ], // end course_details
      },
    ];
  }
}
