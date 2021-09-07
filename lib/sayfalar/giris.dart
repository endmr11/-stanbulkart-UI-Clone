import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:istanbulkart_clone/sayfalar/anasayfa.dart';

class GirisEkrani extends StatefulWidget {
  @override
  _GirisEkraniState createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  TextEditingController t1 = TextEditingController();
  bool _goster = true;

  void _gostersin() {
    setState(() {
      _goster = !_goster;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FDC80E"),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 15.0, left: 8.0, bottom: 8.0, right: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.card_giftcard,
                      color: Colors.black,
                      size: 40.0,
                    ),
                  ),
                  Image.asset(
                    "assets/istanbulkart_logo.png",
                    scale: 1.4,
                  ),
                ],
              ),
              Image.asset(
                "assets/logo.png",
                scale: 2.5,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "İsim Soyisim",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
              Text(
                "Mobil PİN'i GİRİNİZ",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                child: TextFormField(
                  controller: t1,
                  keyboardType: TextInputType.number,
                  obscureText: (_goster) ? true : false,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    labelText: "Mobil Pin",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    suffixIcon: GestureDetector(
                      child: (_goster)
                          ? Icon(
                              Icons.remove_red_eye_sharp,
                              color: Colors.black,
                            )
                          : Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.grey,
                            ),
                      onTap: () {
                        _gostersin();
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side: BorderSide(color: Colors.transparent),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.black,
                    ),
                    //padding:MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(top: 20,bottom: 20,left: 50,right: 50)),
                    minimumSize:
                        MaterialStateProperty.all<Size>(Size(350, 60)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnaSayfa(),
                      ),
                    );
                  },
                  child: Text(
                    "Giriş",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 2.0, left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PİN'İ UNUTTUM",
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.qr_code_scanner,
                            size: 50.0,
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            elevation: MaterialStateProperty.all<double>(0.0),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.black),
                          ),
                        ),
                        Text(
                          "QR Ödeme",
                        ),
                      ],
                    ),
                    VerticalDivider(
                      indent: 10.0,
                      endIndent: 10.0,
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 50.0,
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            elevation: MaterialStateProperty.all<double>(0.0),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.black),
                          ),
                        ),
                        Text(
                          "İşlem Noktaları",
                        ),
                      ],
                    ),
                    VerticalDivider(
                      indent: 10.0,
                      endIndent: 10.0,
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.call,
                            size: 50.0,
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            elevation: MaterialStateProperty.all<double>(0.0),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.black),
                          ),
                        ),
                        Text(
                          "QR Ödeme",
                        ),
                      ],
                    ),
                    VerticalDivider(
                      indent: 10.0,
                      endIndent: 10.0,
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            FontAwesomeIcons.globe,
                            size: 50.0,
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            elevation: MaterialStateProperty.all<double>(0.0),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.black),
                          ),
                        ),
                        Text(
                          "QR Ödeme",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/ibb_logo.png",scale: 4,),
                    VerticalDivider(
                      indent: 10.0,
                      endIndent: 10.0,
                      thickness: 1,
                      color: Colors.black,
                    ),
                    Image.asset("assets/belbim_logo.png",scale: 25,),
                  ],
                ),
              ),
              //Flexible(),
            ],
          ),
        ),
      ),
    );
  }
}
