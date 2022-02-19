import 'package:flutter/material.dart';
import 'package:flutter_yemeksepeti_ui/pages/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFDF2628),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            const Center(
                child: Text(
              'Online yemek veya market siparişleriniz',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
            const Center(
                child: Text(
              'için aşağıdan seçim yapabilirsiniz!',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
            SizedBox(
              height: height * 0.03,
            ),
            const LoginRow()
          ],
        ),
      ),
    );
  }
}

class LoginRow extends StatelessWidget {
  const LoginRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: width / 2.2,
            height: height / 1.17,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/banabilogo.png',
                  height: height * 0.1,
                  width: width * 0.2,
                ),
                const Text(
                  'Online Market',
                ),
                const Text(
                  'Siparişi',
                ),
                SizedBox(
                  height: height / 15,
                ),
                Image.asset(
                  'assets/login1.jpeg',
                  width: width * 0.38,
                ),
                SizedBox(
                  height: height / 3.3,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ))),
                    onPressed: () {},
                    child: const Text('Market Siparişi Ver'))
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          },
          child: Container(
            width: width / 2.2,
            height: height / 1.17,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/yemeksepeti_logo.png',
                  height: height * 0.1,
                  width: width * 0.35,
                ),
                const Text(
                  'Online Yemek',
                ),
                const Text(
                  'Siparişi',
                ),
                SizedBox(
                  height: height / 15,
                ),
                Image.asset(
                  'assets/login2.jpeg',
                  width: width * 0.38,
                ),
                SizedBox(
                  height: height / 3.3,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: const Text('Yemek Siparişi Ver'))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
