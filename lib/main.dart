import 'package:flutter/material.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/AnaSayfa.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/AsilAnaSayfa.dart';

void main() {
  runApp(AnaUygulama());
}

class AnaUygulama extends StatelessWidget {
  const AnaUygulama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AsilAnaSayfa());
  }
}
