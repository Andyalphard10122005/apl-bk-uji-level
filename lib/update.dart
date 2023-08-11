import 'package:apl_bk_uji_level/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';

class update extends StatefulWidget {
  const update({super.key});

  @override
  State<update> createState() => _updateState();
}

class _updateState extends State<update> {
  final format = DateFormat("yyyy-MM-dd");
  final formats = DateFormat("HH:mm");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00109D),
      body: ListView(children: [
        Stack(
          children: [
            Positioned(
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 120),
              width: double.infinity,
              height: 800,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(top: 120, left: 50, right: 50, bottom: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nama',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Kelas',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                        labelText: 'Select Bimbingan',
                      ),
                      items: [
                        DropdownMenuItem(
                          child: Text('Bimbingan Sosial'),
                          value: 'Bimbingan Sosial',
                        ),
                        DropdownMenuItem(
                          child: Text('Bimbingan Belajar'),
                          value: 'Bimbingan Belajar',
                        ),
                        DropdownMenuItem(
                          child: Text('Bimbingan karir'),
                          value: 'Bimbingan karir',
                        ),
                        DropdownMenuItem(
                          child: Text('Bimbingan Pribadi'),
                          value: 'Bimbingan Pribadi',
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'No Telp',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DateTimeField(
                      format: format,
                      decoration: InputDecoration(
                          labelText: "Tanggal"), // Tambahkan label ke sini
                      onChanged: (value) {
                        print(value);
                      },
                      onShowPicker: (context, currentValue) {
                        return showDatePicker(
                          context: context,
                          firstDate: DateTime(1900),
                          initialDate: currentValue ?? DateTime.now(),
                          lastDate: DateTime(2100),
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DateTimeField(
                      format: formats,
                      decoration: InputDecoration(
                          labelText: "Jam"), // Tambahkan label ke sini
                      onShowPicker: (context, currentValue) async {
                        final time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.fromDateTime(
                              currentValue ?? DateTime.now()),
                        );
                        return DateTimeField.convert(time);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Text',
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Container(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFECB600)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: Container(
                              width: 180,
                              height: 40,
                              child: Center(
                                child: Text("Simpan perubahan"),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => home_page()));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFECB600)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: Container(
                              width: 100,
                              height: 40,
                              child: Center(
                                child: Text("Cancel"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 223, 223, 223)),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'images/Bimbingan1.png',
                          fit: BoxFit.cover,
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(left: 15, bottom: 120),
                            width: 200,
                            height: 50,
                            child: Text(
                              'Bimbingan Pribadi',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ]),
    );
  }
}
