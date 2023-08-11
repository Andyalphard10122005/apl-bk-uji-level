import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00109D),
      body: (ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 700,
                margin: EdgeInsets.only(top: 115),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(65),
                        topRight: Radius.circular(65)),
                    color: Colors.white),
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      margin: EdgeInsets.only(top: 25),
                      child: CircleAvatar(
                        radius: 75,
                        backgroundImage: AssetImage('images/Bu-caca.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Sayyidina Farhan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'XII PPLG 2',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                          BorderRadius.circular(10), // Memperbaiki bagian ini
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.all(12),
                            child: Text('NISN: 303100573')),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                          BorderRadius.circular(10), // Memperbaiki bagian ini
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.all(12),
                            child: Text('No Telepon: 0821213')),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    width: 380,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF00109D)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          print('Logout icon tapped');
                        },
                        child: Row(
                          children: [
                            Icon(Icons.logout, color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              'Log Out',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      )),
    );
  }
}
