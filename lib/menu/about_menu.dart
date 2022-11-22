import 'package:flutter/material.dart';

class AboutMenu extends StatelessWidget {
  const AboutMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 0, 38, 141),
        padding: const EdgeInsets.only(
            left: 20.0, right: 20, top: 80.0, bottom: 100.0),
        width: double.infinity, height: double.infinity,
        // ignore: prefer_const_constructors
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          elevation: 10,
          shadowColor: Colors.blueGrey,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'About Us',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontFamily: 'ChakraPetch'),
                  ),
                ),
              ),

              Container(
                margin:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan( text:
                    'Majalengka punya berita ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: 'ChakraPetch'),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'merupakan aplikasi dengan tujuan utamanya dibuat untuk memenuhi tugas Ulangan Tengah Semester mata kuliah Pemograman Mobile II.',
                             style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        fontFamily: 'ChakraPetch'),
                          )
                        ]
                  ),
                  textAlign: TextAlign.left,
                  ),
                ),
              ),

               Container(
                margin: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5.0,),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Aplikasi ini sebenarnya ingin dibuat untuk menampilkan seputar berita-berita yang ada di Majalengka, dengan beberapa menu yaitu:',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        fontFamily: 'ChakraPetch'),
                  ),
                ),
              ),

              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 15.0, top: 5.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan( text:
                    'Pertama Home. ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: 'ChakraPetch'),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Menampilkan berita secara keseluruhan yang ada di Majalengka.',
                             style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        fontFamily: 'ChakraPetch'),
                          )
                        ]
                  ),
                  textAlign: TextAlign.left,
                  ),
                ),
              ),

              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 15.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan( text:
                    'Kedua Trending. ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: 'ChakraPetch'),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Menampilkan berita yang sedah trending di Majalengka.',
                             style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        fontFamily: 'ChakraPetch'),
                          )
                        ]
                  ),
                  textAlign: TextAlign.left,
                  ),
                ),
              ),

              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 15.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan( text:
                    'Ketiga kategori. ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: 'ChakraPetch'),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Menampilkan beberapa pilihan berita yang diinginkan.',
                             style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        fontFamily: 'ChakraPetch'),
                          )
                        ]
                  ),
                  textAlign: TextAlign.left,
                  ),
                ),
              ),

               Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 15.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan( text:
                    'Keempat About. ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: 'ChakraPetch'),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Menampilkan informasi aplikasi.',
                             style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        fontFamily: 'ChakraPetch'),
                          )
                        ]
                  ),
                  textAlign: TextAlign.left,
                  ),
                ),
              ),


              Container(
                margin: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 30.0, bottom: 10.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Copyright ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        fontFamily: 'ChakraPetch'),
                  ),
                ),
              ),

              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/jamjam.jpeg',
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),

                   
                         Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            // padding: const EdgeInsets.only(left: 5.0),
                            child: const Text(
                              "Nama",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                  fontFamily: 'ChakraPetch'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10.0, top: 5.0),
                            // padding: const EdgeInsets.only(left: 5.0),
                            child: const Text(
                              "NPM",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                  fontFamily: 'ChakraPetch',),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(left: 10.0, top: 5.0),
                            // padding: const EdgeInsets.only(left: 5.0),
                            child: const Text(
                              "Kelas",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                  fontFamily: 'ChakraPetch'),
                            ),
                          ),
                        ]),

                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 20.0),
                            // padding: const EdgeInsets.only(left: 5.0),
                            child: const Text(
                              ": Jamjam Malik Nurjaman",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                  fontFamily: 'ChakraPetch'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20.0, top: 5.0),
                            // padding: const EdgeInsets.only(left: 5.0),
                            child: const Text(
                              ": 20552011210",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                  fontFamily: 'ChakraPetch',),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(left: 20.0, top: 5.0),
                            // padding: const EdgeInsets.only(left: 5.0),
                            child: const Text(
                              ": TIF RP-20 A",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                  fontFamily: 'ChakraPetch'),
                            ),
                          ),
                        ]),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
