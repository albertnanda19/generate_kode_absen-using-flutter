import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(AbsenPage());
}

class AbsenPage extends StatefulWidget {
  @override
  _AbsenPageState createState() => _AbsenPageState();
}

class _AbsenPageState extends State<AbsenPage> {
  KodeAbsen _kodeAbsenstate = KodeAbsen();

  void generateKodeBaru() {
    setState(() {
      _kodeAbsenstate.generateKodeBaru();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kode Absen Generator by Group 5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF221E40),
        appBar: AppBar(
          backgroundColor: Color(0xFF233986),
          title: Text(
            'Generate Kode Absen by Group 5',
            style: TextStyle(fontFamily: 'Poppins', fontSize: 25),
          )
          ,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xFF0f1482),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Kode Absen:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                KodeAbsenWidget(kodeAbsen: _kodeAbsenstate),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: generateKodeBaru,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white
                  ),
                  child: Text(
                    "Generate Kode Baru",
                    style: TextStyle(fontFamily: 'Poppins', backgroundColor: Colors.green),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class KodeAbsen {
  String kode = '';

  void generateKodeBaru() {
    var random = Random();
    var karakter = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    kode = '';

    for (var i = 0; i < 6; i++) {
      kode += karakter[random.nextInt(karakter.length)];
    }
  }
}

class KodeAbsenWidget extends StatelessWidget {
  final KodeAbsen kodeAbsen;

  KodeAbsenWidget({required this.kodeAbsen});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFF808080),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          kodeAbsen.kode,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins'
          ),
        ),
      ),
    );
  }
}
