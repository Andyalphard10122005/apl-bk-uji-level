import 'package:apl_bk_uji_level/history.dart';
import 'package:apl_bk_uji_level/input.dart';
import 'package:apl_bk_uji_level/profile.dart';
import 'package:apl_bk_uji_level/update.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  color: Color(0xFF00109D),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Starbhak.Konseling",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Hello, tyo simanjuntak",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => InputPage()))
                    },
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 280,
                          ),
                          width: 150,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFECB600),
                          ),
                          child: Center(
                            child: Text(
                              "Buat Jadwal",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 400,
                                  height: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color:
                                          Color.fromARGB(255, 241, 241, 241)),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xFF00109D)),
                                  child: Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Status:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFECB600)),
                                        ),
                                        Text(
                                          "Diajukan",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10, left: 290),
                                  width: 100,
                                  height: 100,
                                  child: ClipOval(
                                    child: Image.asset("images/Bu sheila.png",
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 120),
                                  width: 400,
                                  height: 2,
                                  color: Color.fromARGB(255, 179, 179, 179),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 135, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Desc:",
                                        style: const TextStyle(
                                            color: Color(0xFF0044C7),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Bimbingan Belajar",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Tanggal:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF0044C7)),
                                      ),
                                      Text(
                                        "20-9-2023",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => update()))
                                  },
                                  child: Container(
                                    width: 120,
                                    height: 35,
                                    margin:
                                        EdgeInsets.only(top: 200, left: 220),
                                    decoration: BoxDecoration(
                                      color: Color(
                                          0xFFECB600), // Menambahkan warna biru
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Center(
                                      // Tambahkan Center untuk menengahkan teks
                                      child: Text(
                                        'Detail',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors
                                                .white), // Mengubah warna teks menjadi putih untuk kontras dengan latar belakang biru
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 200, left: 350),
                                  child: GestureDetector(
                                    onTap: () {
                                      print('Delete icon tapped');
                                    },
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            "History",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 180,
                                  height: 280,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFF00109D)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: CircleAvatar(
                                          radius: 55,
                                          backgroundImage:
                                              AssetImage("images/rikrik.jpeg"),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Pa Ricky Sudraja",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                "05-07-23/09.00",
                                                style: TextStyle(
                                                  color: Color(0xFFECB600),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                              Center(
                                                child: Text(
                                                  "Bimbingan Sosial",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 180,
                                  height: 280,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFF00109D)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: CircleAvatar(
                                          radius: 55,
                                          backgroundImage: AssetImage(
                                              "images/Bu sheila.png"),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Bu Sheila",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                "05-07-23/09.00",
                                                style: TextStyle(
                                                  color: Color(0xFFECB600),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                              Center(
                                                child: Text(
                                                  "Bimbingan Pribadi",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 180,
                                  height: 280,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFF00109D)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: CircleAvatar(
                                          radius: 55,
                                          backgroundImage:
                                              AssetImage("images/Bu-fika.png"),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Bu Fika",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                "05-07-23/09.00",
                                                style: TextStyle(
                                                  color: Color(0xFFECB600),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                              Center(
                                                child: Text(
                                                  "Bimbingan Karir",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 180,
                                  height: 280,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFF00109D)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: CircleAvatar(
                                          radius: 55,
                                          backgroundImage:
                                              AssetImage("images/Bu-henny.jpg"),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Bu Henny",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                "05-07-23/09.00",
                                                style: TextStyle(
                                                  color: Color(0xFFECB600),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                              Center(
                                                child: Text(
                                                  "Bimbingan Pribadi",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 180,
                                  height: 280,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFF00109D)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: CircleAvatar(
                                          radius: 55,
                                          backgroundImage:
                                              AssetImage("images/Bu-nadia.png"),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Bu Nadia",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                "05-07-23/09.00",
                                                style: TextStyle(
                                                  color: Color(0xFFECB600),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                              Center(
                                                child: Text(
                                                  "Bimbingan Karir",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 180,
                                  height: 280,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFF00109D)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: CircleAvatar(
                                          radius: 55,
                                          backgroundImage:
                                              AssetImage("images/Bu-caca.png"),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Bu Caca",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                "05-07-23/09.00",
                                                style: TextStyle(
                                                  color: Color(0xFFECB600),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                              Center(
                                                child: Text(
                                                  "Bimbingan Belajar",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Event",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 200,
                              height: 350,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: Color.fromARGB(255, 222, 222, 222)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("images/Seminar1.jpg"),
                                  Container(
                                      width: 100,
                                      height: 20,
                                      color: Color(0xFF00109D),
                                      child: Center(
                                        child: Text(
                                          "20 july 2020",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      )),
                                  Text(
                                    "Seminar Bimbingan konseling",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 200,
                              height: 350,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: Color.fromARGB(255, 222, 222, 222)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("images/Seminar2.jpeg"),
                                  Container(
                                      width: 100,
                                      height: 20,
                                      color: Color(0xFF00109D),
                                      child: Center(
                                        child: Text(
                                          "20 july 2020",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      )),
                                  Text(
                                    "Seminar Bimbingan konseling",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
