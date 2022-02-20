import 'package:flutter/material.dart';

class OncekiSiparisler extends StatelessWidget {
  const OncekiSiparisler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var heigh = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Containers(
              heigh: heigh,
              width: width,
              puan: '8.6',
              dukkan: 'Bir Canım Tantuni, Talas(Yenidoğan Mah.)',
              gun: '6 gün'),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
          Containers(
              heigh: heigh,
              width: width,
              puan: '8.9',
              dukkan: 'Canım Ciğerim Tantuni & Künefe, Talas(Yenidoğan Mah.)',
              gun: '1 ay'),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
          Containers(
              heigh: heigh,
              width: width,
              puan: '8.9',
              dukkan: 'Canım Ciğerim Tantuni & Künefe, Talas(Yenidoğan Mah.)',
              gun: '2 ay'),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
          Containers(
              heigh: heigh,
              width: width,
              puan: '8.2',
              dukkan: 'Çıtır Chicken, Talas(Mevlana Mah.)',
              gun: '2 ay'),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
          Containers(
              heigh: heigh,
              width: width,
              puan: '8.9',
              dukkan: 'Canım Ciğerim Tantuni & Künefe, Talas(Yenidoğan Mah.)',
              gun: '2 ay'),
          const Divider(
            height: 0,
            color: Colors.grey,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

class Containers extends StatelessWidget {
  const Containers({
    Key? key,
    required this.heigh,
    required this.width,
    required this.puan,
    required this.dukkan,
    required this.gun,
  }) : super(key: key);

  final double heigh;
  final double width;
  final String puan;
  final String dukkan;
  final String gun;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigh / 12,
      child: Padding(
        padding: const EdgeInsets.only(right: 6, left: 6, top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width / 10,
              height: heigh / 30,
              child: Center(
                child: Text(
                  puan,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(5)),
            ),
            Container(
              width: width / 1.6,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(dukkan, overflow: TextOverflow.ellipsis),
                  SizedBox(
                    height: heigh / 140,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.grey,
                      ),
                      const Text('Detay'),
                      SizedBox(
                        width: width / 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(3)),
                        height: heigh / 35,
                        width: width / 4,
                        child: ElevatedButton.icon(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            icon: const Icon(
                              Icons.sync,
                              size: 16,
                              color: Colors.green,
                            ),
                            onPressed: () {},
                            label: const Text(
                              'Tekrarla',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              width: width / 5.1,
              child: Text(
                gun + ' önce',
                style: const TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
