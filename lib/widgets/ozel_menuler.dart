import 'package:flutter/material.dart';

class OzelMenuler extends StatelessWidget {
  const OzelMenuler({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var liste = [
      'assets/donerlezzeti.png',
      'assets/fitmenu.png',
      'assets/algida.png',
      'assets/35tlalti.png',
      'assets/kampus.png'
    ];
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Card(
            child: Image.asset(liste[index]),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
