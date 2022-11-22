import 'package:flutter/material.dart';
import 'package:portal_berita_uts_sem4/list_menu.dart';
import 'package:portal_berita_uts_sem4/detail/data_detail.dart';

class TrendingMenu extends StatelessWidget {
  const TrendingMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
      color: const Color.fromARGB(255, 0, 38, 141),
      child: ListView.builder(
        itemCount: dataDetail.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DataDetail(
                              datas: dataDetail[index],
                            )));
              },
              child: Card(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        dataDetail[index].image,
                        width: 500,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(dataDetail[index].name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'ChakraPetch')),
                  Text(dataDetail[index].pendek,
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.grey,
                      )),
                ],
              ),
              )
              );
        },
      ),
      ),
    );
  }
}
