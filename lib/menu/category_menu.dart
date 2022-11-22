import 'package:flutter/material.dart';
import 'package:portal_berita_uts_sem4/menu/trending_menu.dart';

class CategoryMenu extends StatelessWidget {
  const CategoryMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        color: const Color.fromARGB(255, 0, 38, 141),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        // ignore: sort_child_properties_last
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          // childAspectRatio: 18/10,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TrendingMenu()));
              },
              // ignore: prefer_const_constructors
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: [
                    Image.asset('images/politik.jpg',
                        width: 800, height: 2000, fit: BoxFit.cover),
                    Positioned(
                        bottom: 0,
                        child: Container(
                          height: 40,
                          width: 1000,
                          color: Colors.black45,
                        )),
                    const Positioned(
                        left: 5,
                        bottom: 20,
                        child: Text(
                          "Politik",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.white,
                              fontFamily: 'ChakraPetch'),
                        )),
                    const Positioned(
                        left: 5,
                        bottom: 7,
                        child: Text(
                          "Berita politik terkini",
                          style: TextStyle(fontSize: 13, color: Colors.white54),
                        )),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TrendingMenu()));
              },
              // ignore: prefer_const_constructors
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: [
                    Image.asset('images/ekonomi.jpg',
                        width: 800, height: 2000, fit: BoxFit.cover),
                    Positioned(
                        bottom: 0,
                        child: Container(
                          height: 40,
                          width: 1000,
                          color: Colors.black45,
                        )),
                    const Positioned(
                        left: 5,
                        bottom: 20,
                        child: Text(
                          "Ekonomi",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.white,
                              fontFamily: 'ChakraPetch'),
                        )),
                    const Positioned(
                        left: 5,
                        bottom: 7,
                        child: Text(
                          "Berita ekonomi terkini",
                          style: TextStyle(fontSize: 13, color: Colors.white54),
                        )),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TrendingMenu()));
              },
              // ignore: prefer_const_constructors
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: [
                    Image.asset('images/pendidikan.jpg',
                        width: 800, height: 2000, fit: BoxFit.cover),
                    Positioned(
                        bottom: 0,
                        child: Container(
                          height: 40,
                          width: 1000,
                          color: Colors.black45,
                        )),
                    const Positioned(
                        left: 5,
                        bottom: 20,
                        child: Text(
                          "Pendidikan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.white,
                              fontFamily: 'ChakraPetch'),
                        )),
                    const Positioned(
                        left: 5,
                        bottom: 7,
                        child: Text(
                          "Berita pendidikan terkini",
                          style: TextStyle(fontSize: 13, color: Colors.white54),
                        )),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TrendingMenu()));
              },
              // ignore: prefer_const_constructors
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: [
                    Image.asset('images/wisata.jpg',
                        width: 800, height: 2000, fit: BoxFit.cover),
                    Positioned(
                        bottom: 0,
                        child: Container(
                          height: 40,
                          width: 1000,
                          color: Colors.black45,
                        )),
                    const Positioned(
                        left: 5,
                        bottom: 20,
                        child: Text(
                          "Wisata",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.white,
                              fontFamily: 'ChakraPetch'),
                        )),
                    const Positioned(
                        left: 5,
                        bottom: 7,
                        child: Text(
                          "Berita wisata terkini",
                          style: TextStyle(fontSize: 13, color: Colors.white54),
                        )),
                  ],
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TrendingMenu()));
              },
              // ignore: prefer_const_constructors
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: [
                    Image.asset('images/keluhan.jpg',
                        width: 800, height: 2000, fit: BoxFit.cover),
                    Positioned(
                        bottom: 0,
                        child: Container(
                          height: 40,
                          width: 1000,
                          color: Colors.black45,
                        )),
                    const Positioned(
                        left: 5,
                        bottom: 20,
                        child: Text(
                          "Keluhan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.white,
                              fontFamily: 'ChakraPetch'),
                        )),
                    const Positioned(
                        left: 5,
                        bottom: 7,
                        child: Text(
                          "Berita keluhan terkini",
                          style: TextStyle(fontSize: 13, color: Colors.white54),
                        )),
                         ],
                ),
              ),
            ),
      
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TrendingMenu()));
                      },
                      // ignore: prefer_const_constructors
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Stack(
                          children: [
                            Image.asset('images/lalulintas.jpg',
                                width: 800, height: 2000, fit: BoxFit.cover),
                            Positioned(
                                bottom: 0,
                                child: Container(
                                  height: 40,
                                  width: 1000,
                                  color: Colors.black45,
                                )),
                            const Positioned(
                                left: 5,
                                bottom: 20,
                                child: Text(
                                  "Lalulintas",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontFamily: 'ChakraPetch'),
                                )),
                            const Positioned(
                                left: 5,
                                bottom: 7,
                                child: Text(
                                  "Berita lalulintas terkini",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white54),
                                )),
                          ],
                        ),
                      ),
                    ),

                     InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TrendingMenu()));
                      },
                      // ignore: prefer_const_constructors
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Stack(
                          children: [
                            Image.asset('images/bantuan.jpeg',
                                width: 800, height: 2000, fit: BoxFit.cover),
                            Positioned(
                                bottom: 0,
                                child: Container(
                                  height: 40,
                                  width: 1000,
                                  color: Colors.black45,
                                )),
                            const Positioned(
                                left: 5,
                                bottom: 20,
                                child: Text(
                                  "Bantuan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontFamily: 'ChakraPetch'),
                                )),
                            const Positioned(
                                left: 5,
                                bottom: 7,
                                child: Text(
                                  "Berita bantuan terkini",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white54),
                                )),
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TrendingMenu()));
                      },
                      // ignore: prefer_const_constructors
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Stack(
                          children: [
                            Image.asset('images/usaha.jpeg',
                                width: 800, height: 2000, fit: BoxFit.cover),
                            Positioned(
                                bottom: 0,
                                child: Container(
                                  height: 40,
                                  width: 1000,
                                  color: Colors.black45,
                                )),
                            const Positioned(
                                left: 5,
                                bottom: 20,
                                child: Text(
                                  "Usaha",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontFamily: 'ChakraPetch'),
                                )),
                            const Positioned(
                                left: 5,
                                bottom: 7,
                                child: Text(
                                  "Berita usaha terkini",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white54),
                                )),
                          ],
                        ),
                      ),
                    ),

                    
                  ],
                ),
              ),
      ),
            );
      
  }
}
