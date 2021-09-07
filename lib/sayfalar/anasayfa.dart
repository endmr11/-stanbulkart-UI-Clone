import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _secilenIndex = 2;
  final List<Widget> _sayfalar = [
    Text("QR İLE ÖDEME"),
    HizliIslem(),
    IstanbulKartlarim(),
    Bildirimler(),
  ];

  String _baslik = "İstanbulkartlarım";
  final List<String> _basliklar = [
    "Qr İle Ödeme",
    "Hızlı İşlem",
    "İstanbulkartlarım",
    "Bildirimler",
  ];

  @override
  void initState() {
    super.initState();
  }

  void _sayfaDegis(int index) {
    setState(() {
      _secilenIndex = index;
      _baslik = _basliklar[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HexColor("#FFFBF1"),
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            _baslik,
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: SizedBox.expand(
            child: Container(
              color: Colors.black87,
              child: MenuListem(),
            ),
          ),
        ),
        bottomNavigationBar: AltMenu(),
        body: _sayfalar.elementAt(_secilenIndex),
      ),
    );
  }

  BottomNavigationBar AltMenu() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.qr_code_scanner),
            onPressed: () {
              print("sadsa");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QrOdeme(),
                ),
              );
            },
          ),
          label: "QR İLE ÖDEME",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.moneyBillAlt,
          ),
          label: "HIZLI İŞLEM",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.credit_card_outlined,
          ),
          label: "KART İŞLEMLERİ",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_active_sharp,
          ),
          label: "BİLDİRİMLER",
        ),
      ],
      elevation: 0.0,
      currentIndex: _secilenIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      iconSize: 30.0,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      onTap: _sayfaDegis,
    );
  }

  ListView MenuListem() {
    return ListView(
      children: [
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          dense: true,
          onTap: () {},
          selectedTileColor: HexColor("#FDC70D"),
          leading: Icon(
            Icons.person,
            color: HexColor("#FDC70D"),
            size: 20.0,
          ),
          title: Text(
            "Profilim",
            style: TextStyle(
              color: HexColor("#FDC70D"),
              fontSize: 13.0,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          dense: true,
          onTap: () {},
          selectedTileColor: HexColor("#FDC70D"),
          leading: Icon(
            Icons.location_on_outlined,
            color: HexColor("#FDC70D"),
            size: 20.0,
          ),
          title: Text(
            "İşlem Noktaları",
            style: TextStyle(
              color: HexColor("#FDC70D"),
              fontSize: 13.0,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          dense: true,
          onTap: () {},
          selectedTileColor: HexColor("#FDC70D"),
          leading: Icon(
            Icons.credit_card_outlined,
            color: HexColor("#FDC70D"),
            size: 20.0,
          ),
          title: Text(
            "Başka İstanbulkart'a TL Yükle",
            style: TextStyle(
              color: HexColor("#FDC70D"),
              fontSize: 13.0,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          dense: true,
          onTap: () {},
          selectedTileColor: HexColor("#FDC70D"),
          leading: Icon(
            Icons.credit_card_outlined,
            color: HexColor("#FDC70D"),
            size: 20.0,
          ),
          title: Text(
            "Kayıtlı Banka/Kredi Kartlarım",
            style: TextStyle(
              color: HexColor("#FDC70D"),
              fontSize: 13.0,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          dense: true,
          onTap: () {},
          selectedTileColor: HexColor("#FDC70D"),
          leading: Icon(
            Icons.card_membership_rounded,
            color: HexColor("#FDC70D"),
            size: 20.0,
          ),
          title: Text(
            "Aylık Abonman Yükle",
            style: TextStyle(
              color: HexColor("#FDC70D"),
              fontSize: 13.0,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          dense: true,
          onTap: () {},
          selectedTileColor: HexColor("#FDC70D"),
          leading: Icon(
            FontAwesomeIcons.bullhorn,
            color: HexColor("#FDC70D"),
            size: 20.0,
          ),
          title: Text(
            "Duyurular",
            style: TextStyle(
              color: HexColor("#FDC70D"),
              fontSize: 13.0,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          dense: true,
          onTap: () {},
          selectedTileColor: HexColor("#FDC70D"),
          leading: Icon(
            Icons.info,
            color: HexColor("#FDC70D"),
            size: 20.0,
          ),
          title: Text(
            "Hakkımızda",
            style: TextStyle(
              color: HexColor("#FDC70D"),
              fontSize: 13.0,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          dense: true,
          onTap: () {},
          selectedTileColor: HexColor("#FDC70D"),
          leading: Icon(
            Icons.message,
            color: HexColor("#FDC70D"),
            size: 20.0,
          ),
          title: Text(
            "İletişim",
            style: TextStyle(
              color: HexColor("#FDC70D"),
              fontSize: 13.0,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          dense: true,
          onTap: () {},
          selectedTileColor: HexColor("#FDC70D"),
          leading: Icon(
            FontAwesomeIcons.questionCircle,
            color: HexColor("#FDC70D"),
            size: 20.0,
          ),
          title: Text(
            "Sıkça Sorulan Sorular",
            style: TextStyle(
              color: HexColor("#FDC70D"),
              fontSize: 13.0,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          dense: true,
          onTap: () {},
          selectedTileColor: HexColor("#FDC70D"),
          leading: Icon(
            FontAwesomeIcons.fileContract,
            color: HexColor("#FDC70D"),
            size: 20.0,
          ),
          title: Text(
            "Kullanıcı Sözleşmesi",
            style: TextStyle(
              color: HexColor("#FDC70D"),
              fontSize: 13.0,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          dense: true,
          onTap: () {},
          selectedTileColor: HexColor("#FDC70D"),
          leading: Icon(
            FontAwesomeIcons.cog,
            color: HexColor("#FDC70D"),
            size: 20.0,
          ),
          title: Text(
            "Ayarlar",
            style: TextStyle(
              color: HexColor("#FDC70D"),
              fontSize: 13.0,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          dense: true,
          onTap: () {},
          selectedTileColor: HexColor("#FDC70D"),
          leading: Icon(
            FontAwesomeIcons.question,
            color: HexColor("#FDC70D"),
            size: 20.0,
          ),
          title: Text(
            "Yardım",
            style: TextStyle(
              color: HexColor("#FDC70D"),
              fontSize: 13.0,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          dense: true,
          onTap: () {},
          selectedTileColor: HexColor("#FDC70D"),
          leading: Icon(
            FontAwesomeIcons.powerOff,
            color: HexColor("#FDC70D"),
            size: 20.0,
          ),
          title: Text(
            "Çıkış",
            style: TextStyle(
              color: HexColor("#FDC70D"),
              fontSize: 13.0,
            ),
          ),
        ),
      ],
    );
  }
}

class IstanbulKartlarim extends StatefulWidget {
  @override
  _IstanbulKartlarimState createState() => _IstanbulKartlarimState();
}

class _IstanbulKartlarimState extends State<IstanbulKartlarim> {
  final List<String> _sliders = [
    "assets/istanbulkart.png",
    "assets/istanbulkart.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            color: HexColor("#FFFBF1"),
            child: Sliderlar(sliders: _sliders),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: IslemListem(),
          ),
        ),
      ],
    );
  }
}

class Sliderlar extends StatelessWidget {
  const Sliderlar({
    Key? key,
    required List<String> sliders,
  })  : _sliders = sliders,
        super(key: key);

  final List<String> _sliders;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: false,
        enableInfiniteScroll: false,
        autoPlay: false,
      ),
      items: _sliders
          .map((e) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      e,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ))
          .toList(),
    );
  }
}

class IslemListem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: HexColor("#FDC70D"), width: 2.0),
          ),
          onTap: () {},
          leading: Icon(
            FontAwesomeIcons.recycle,
            color: Colors.black,
          ),
          title: Text(
            "İşlemlerim",
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: HexColor("#FDC70D"), width: 2.0),
          ),
          onTap: () {},
          leading: Icon(
            FontAwesomeIcons.moneyBillAlt,
            color: Colors.black,
          ),
          title: Text(
            "Para Yükle (TL)",
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: HexColor("#FDC70D"), width: 2.0),
          ),
          onTap: () {},
          leading: Icon(
            FontAwesomeIcons.exchangeAlt,
            color: Colors.black,
          ),
          title: Text(
            "Başka İstanbulkart'a TL Yükle",
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: HexColor("#FDC70D"), width: 2.0),
          ),
          onTap: () {},
          leading: Icon(
            FontAwesomeIcons.listOl,
            color: Colors.black,
          ),
          title: Text(
            "Bekleyen Talimatlar",
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: HexColor("#FDC70D"), width: 2.0),
          ),
          onTap: () {},
          leading: Icon(
            FontAwesomeIcons.signal,
            color: Colors.black,
          ),
          title: Text(
            "Bakiye Öğren (NFC)",
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: HexColor("#FDC70D"), width: 2.0),
          ),
          onTap: () {},
          leading: Icon(
            FontAwesomeIcons.idCard,
            color: Colors.black,
          ),
          title: Text(
            "Aylık Abonman Yükle",
          ),
        ),
      ],
    );
  }
}

class Bildirimler extends StatefulWidget {
  @override
  _BildirimlerState createState() => _BildirimlerState();
}

class _BildirimlerState extends State<Bildirimler> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(
              Icons.notifications,
              color: HexColor("#FDC80C"),
              size: 40.0,
            ),
            title: Text(
              "İstanbulkart Bakiyeniz Belirttiğiniz 20TL'nin Tutarının altına düşmüştür.",
            ),
          ),
        ),
      ],
    );
  }
}

class HizliIslem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: HexColor("#FDC70D"), width: 2.0),
            ),
            onTap: () {},
            trailing: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
                size: 50.0,
              ),
            ),
            title: Center(
              child: Text(
                "Hızlı İşlem",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ListTile(
            contentPadding: EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: HexColor("#FDC70D"), width: 2.0),
            ),
            onTap: () {},
            trailing: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
                size: 50.0,
              ),
            ),
            title: Center(
              child: Text(
                "Kayıtlı İşlemlerim",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QrOdeme extends StatefulWidget {
  @override
  _QrOdemeState createState() => _QrOdemeState();
}

class _QrOdemeState extends State<QrOdeme> {
  var dogrulama = true;

  void ayarla(bool ayar) {
    dogrulama = ayar;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QR Ödeme",
        ),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      ayarla(true);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        (dogrulama == true)
                            ? HexColor("#FDC80C")
                            : Colors.black,
                      ),
                    ),
                    child: Text(
                      "QR Oluştur",
                      style: TextStyle(
                        color: (dogrulama == true)
                            ? Colors.black
                            : HexColor("#FDC80C"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ayarla(false);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        (dogrulama == false)
                            ? HexColor("#FDC80C")
                            : Colors.black,
                      ),
                    ),
                    child: Text(
                      "QR Okut",
                      style: TextStyle(
                        color: (dogrulama == false)
                            ? Colors.black
                            : HexColor("#FDC80C"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Center(
              child: Icon(
                Icons.qr_code_scanner,
                size: 230,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
