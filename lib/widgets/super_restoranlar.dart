import 'package:flutter/material.dart';

import 'favorilerim.dart';

class SuperRestoranlar extends StatelessWidget {
  const SuperRestoranlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heigh = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Material(
      elevation: 4,
      child: Column(
        children: [
          SupRes(
            heigh: heigh,
            width: width,
            restoran: 'Oburger, Talas (Yenidoğan Mah.)',
            puan: '9.3',
          ),
          SupRes(
            heigh: heigh,
            width: width,
            restoran: "Nohut Of Pilav's, Talas (Bahçelievler Mah.)",
            puan: '9.1',
          ),
          SupRes(
            heigh: heigh,
            width: width,
            restoran: 'Pasaport Pizza, Talas (Mevlana Mah.)',
            puan: '8.6',
          ),
          SupRes(
            heigh: heigh,
            width: width,
            restoran: "Moon's, Talas (Mevlana Mah.)",
            puan: '9.2',
          ),
          SupRes(
            heigh: heigh,
            width: width,
            restoran: 'Monj, Talas (Mevlana Mah.)',
            puan: '9.4',
          ),
        ],
      ),
    );
  }
}

class SupRes extends StatelessWidget {
  const SupRes({
    Key? key,
    required this.heigh,
    required this.width,
    required this.puan,
    required this.restoran,
  }) : super(key: key);

  final double heigh;
  final double width;
  final String puan;
  final String restoran;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewWidget(
            heigh: heigh * 0.8, width: width, puan: puan, dukkan: restoran),
        Divider(
          height: 0,
          indent: 10,
          thickness: 1,
        ),
      ],
    );
  }
}
