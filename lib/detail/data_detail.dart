import 'package:flutter/material.dart';
import 'package:portal_berita_uts_sem4/list_menu.dart';

class DataDetail extends StatelessWidget {
  final data datas;

  const DataDetail({Key? key, required this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0, top: 20.0),
            child: ClipRRect(
              
              child: Image.asset(
                datas.image,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only( left: 10.0, right: 10.0),
            child: 
          Text(
            datas.name,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
                fontFamily: 'ChakraPetch'),
          ),
          ),
          Padding(
            padding: const EdgeInsets.only( left: 10.0, right: 10.0),
            child: Text(
              datas.panjang,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 15,
                // color: Colors.brown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
