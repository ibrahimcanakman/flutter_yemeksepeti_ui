import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_yemeksepeti_ui/widgets/favorilerim.dart';
import 'package:flutter_yemeksepeti_ui/widgets/onceki_sipari%C5%9Fler.dart';

import '../widgets/cuzdan.dart';
import '../widgets/ozel_menuler.dart';
import '../widgets/super_restoranlar.dart';
import '../widgets/yeni_eklenen_retoranlar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> pageviewListesi = [
    'https://cdn.yemeksepeti.com/adm/Web-letb5s.jpg',
    'https://cdn.yemeksepeti.com/adm/Web-6wjvkx.jpg',
    'https://cdn.yemeksepeti.com/adm/Web-kl8xr9.jpg',
    'https://cdn.yemeksepeti.com/adm/Web-9yv31p.jpg',
    'https://cdn.yemeksepeti.com/adm/Web-i2vc3z.jpg',
    'https://cdn.yemeksepeti.com/adm/Web-ddd8oi.jpg',
    'https://cdn.yemeksepeti.com/adm/Web-9xigwb.jpg',
    'https://cdn.yemeksepeti.com/adm/Web-sk416x.jpg',
    'https://cdn.yemeksepeti.com/adm/Web-w85sfs.jpg',
    'https://cdn.yemeksepeti.com/adm/Web-7ozrdf.jpg'
  ];
  int _currentPage = 0;
  int _selectedIndex = 0;
  late Timer _timer;
  PageController _pageController = PageController(
    initialPage: 0,
  );
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        if (_currentPage < 9) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }
      });

      _pageController.animateToPage(_currentPage,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeOutCirc);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var heigh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFDF2628),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.email))],
        centerTitle: true,
        title: const AppBarButton(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.food_bank_outlined,
            ),
            label: 'Sipari??',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Ara',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: 'Sepetim',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Canl?? Yard??m',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Di??er',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            hesapSahibiBilgi(width: width, heigh: heigh),
            vodColKampanya(width: width, heigh: heigh),
            pageView(width: width, heigh: heigh),
            SizedBox(
              height: heigh / 120,
            ),
            adres(width: width, heigh: heigh),
            SizedBox(
              height: heigh / 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '??nceki Sipari??lerim',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.message_rounded,
                          size: 20,
                        ),
                        SizedBox(
                          width: width / 100,
                        ),
                        const Text('1 adet de??erlendirilmemi?? sipari??iniz var!')
                      ],
                    )
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ],
            ),
            SizedBox(height: heigh / 50),
            const OncekiSiparisler(),
            const Padding(
              padding: EdgeInsets.only(top: 12, left: 20, bottom: 10),
              child: Text(
                'Favorilerim',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w900),
              ),
            ),
            const Favorilerim(),
            const Padding(
              padding: EdgeInsets.only(top: 12, left: 20, bottom: 10),
              child: Text(
                '??zel Men??ler',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w900),
              ),
            ),
            const OzelMenuler(),
            SizedBox(
              height: heigh / 70,
            ),
            const Cuzdan(),
            const Padding(
              padding: EdgeInsets.only(top: 12, left: 20, bottom: 10),
              child: Text(
                'S??per Restoranlar',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w900),
              ),
            ),
            const SuperRestoranlar(),
            const Padding(
              padding: EdgeInsets.only(top: 12, left: 20, bottom: 10),
              child: Text(
                'Yeni Eklenen Restoranlar',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w900),
              ),
            ),
            const YeniEklenenRestoranlar(),
            SizedBox(
              height: heigh / 70,
            )
          ],
        ),
      ),
    );
  }

  hesapSahibiBilgi({required double width, required double heigh}) {
    return Container(
        width: width,
        height: heigh / 15,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: width / 25,
                ),
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.red,
                  child: Text('CA'),
                ),
                SizedBox(
                  width: width / 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Can Akman',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'Muhtar Aday?? (17405 Puan)',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    )
                  ],
                )
              ],
            ),
            Container(
              width: width / 9,
              height: heigh / 15,
              color: Colors.blue.shade700,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  'assets/kupa.png',
                  color: Colors.yellow,
                ),
              ),
            )
          ],
        ));
  }

  vodColKampanya({required double width, required double heigh}) {
    return Container(
      color: const Color(0xFFDF2628),
      width: width,
      height: heigh / 15,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.white),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/kola.png',
                      color: Colors.white,
                      height: heigh / 35,
                    ),
                    label: const Text(
                      'Se??ilmi?? Men??ler',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: Colors.white),
                    borderRadius: BorderRadius.circular(8)),
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/vodafone.png',
                    ),
                    label: const Text(
                      'Vodafone Men??leri',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }

  pageView({required double width, required double heigh}) {
    return Container(
      height: heigh / 4.5,
      child: Scrollbar(
        showTrackOnHover: true,
        thickness: 10,
        hoverThickness: 15,
        radius: const Radius.circular(20),
        controller: _pageController,
        isAlwaysShown: true,
        child: PageView(
          onPageChanged: (value) {
            _currentPage = value;
            setState(() {});
          },
          controller: _pageController,
          children: [
            for (var item in pageviewListesi)
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(item), fit: BoxFit.fill)),
              ),
          ],
        ),
      ),
    );
  }

  adres({required double width, required double heigh}) {
    return Material(
      elevation: 6,
      child: SizedBox(
          height: heigh / 12,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: width / 20,
                  ),
                  const Icon(Icons.home),
                  SizedBox(
                    width: width / 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Ev',
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w800,
                            fontSize: 18),
                      ),
                      Text('Talas (Yenido??an Mah.)'),
                    ],
                  ),
                  SizedBox(
                    width: width / 6,
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: width / 50,
                  )
                ],
              ),
              Expanded(
                child: Container(
                  width: width / 4,
                  color: Colors.orange,
                  child: const Center(
                    child: Text(
                      'RESTORAN L??STELE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
          height: 27,
          width: 230,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red.shade900),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  width: 100,
                  height: 25,
                  child: Image.asset(
                    'assets/yemeksepeti_logo.png',
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7)),
                ),
              ),
              Flexible(
                flex: 1,
                child: Center(
                  child: Container(
                    width: 100,
                    height: 25,
                    child: Image.asset(
                      'assets/banabi_logo.png',
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(7)),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
