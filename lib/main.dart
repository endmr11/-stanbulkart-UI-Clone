import 'package:flutter/material.dart';
import 'package:istanbulkart_clone/sayfalar/giris.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GirisEkrani(),
    );
  }
}
