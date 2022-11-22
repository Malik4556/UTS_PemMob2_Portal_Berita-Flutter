import 'package:flutter/material.dart';
import 'package:portal_berita_uts_sem4/list_menu.dart';
import 'package:portal_berita_uts_sem4/detail/data_detail.dart';
// import 'package:flutter_application_2/data/data_recipes.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key);

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          dataDetail[index].image,
                          width: 110,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                        ),
                        Container(
                          padding: const EdgeInsets.only(right:10.0),
                          child: Text(
                            dataDetail[index].name,
                            maxLines: 15,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily: 'ChakraPetch'),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(right:10.0),
                          child: Text(dataDetail[index].pendek,
                              maxLines: 15,
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.ellipsis,),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
      ),
    );
  }
}
