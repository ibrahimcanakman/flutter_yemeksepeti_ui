import 'package:flutter/material.dart';

class Cuzdan extends StatelessWidget {
  const Cuzdan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heigh = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Material(
      elevation: 4,
      child: Container(
        height: heigh / 15,
        color: Colors.white,
        child: Row(
          children: [
            SizedBox(
              width: width / 25,
            ),
            const Icon(
              Icons.account_balance_wallet,
              color: Colors.red,
              size: 30,
            ),
            SizedBox(
              width: width / 15,
            ),
            Text(
              'CÜZDAN',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
            ),
            SizedBox(
              width: width / 2.5,
            ),
            Text(
              '0,00 TL',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                  color: Colors.orange),
            ),
            SizedBox(
              width: width / 20,
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
              size: 17,
            )
          ],
        ),
      ),
    );
  }
}
