import 'package:flutter/material.dart';

import 'super_restoranlar.dart';

class YeniEklenenRestoranlar extends StatelessWidget {
  const YeniEklenenRestoranlar({Key? key}) : super(key: key);

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
            restoran: 'Meg Piliç 2, Talas (Harman Mah.)',
            puan: '8.6',
          ),
          SupRes(
            heigh: heigh,
            width: width,
            restoran: "So Fire House Burger, Talas (Mevlana Mah.)",
            puan: '8.4',
          ),
          SupRes(
            heigh: heigh,
            width: width,
            restoran: 'Kahve Dünyası Algötür, Talas (Yenidoğan Mah.)',
            puan: '8.9',
          ),
          SupRes(
            heigh: heigh,
            width: width,
            restoran: "Pizza Mida, Talas (Mevlana Mah.)",
            puan: '-',
          ),
          SupRes(
            heigh: heigh,
            width: width,
            restoran: 'Neva-le Çiğ Köfte, Talas (Kiçiköy Mah.)',
            puan: '-',
          ),
        ],
      ),
    );
  }
}
