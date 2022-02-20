import 'package:flutter/material.dart';

class Favorilerim extends StatelessWidget {
  const Favorilerim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heigh = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Material(
      elevation: 5,
      child: NewWidget(heigh: heigh, width: width, dukkan: 'Canım Ciğerim Tantuni & Künefe, Talas (Yenidoğan Ma.)', puan: '8.9',),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.heigh,
    required this.width,required this.puan,required this.dukkan,
  }) : super(key: key);

  final double heigh;
  final double width;
  final String puan;
  final String dukkan;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: heigh / 12,
      child: Padding(
        padding: const EdgeInsets.only(right: 6, left: 6, top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: width / 10,
              height: heigh / 30,
              child: Center(
                child: Text(
                  puan,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5)),
            ),
            SizedBox(
              width: width / 10,
            ),
            Container(
              width: width / 1.6,
              child: Text(
                dukkan,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
