import 'package:flutter/material.dart';
import 'package:generate_kode_absen/controller/kode_absen_controller.dart';
import 'package:generate_kode_absen/view/generateKodePage/widget/kode_absen_widget.dart';

class GenerateKodePage extends StatefulWidget {
  const GenerateKodePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AbsenPageState createState() => _AbsenPageState();
}

class _AbsenPageState extends State<GenerateKodePage> {
  final _kodeAbsenstate = KodeAbsenController();

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
        backgroundColor: const Color(0xFF221E40),
        appBar: AppBar(
          backgroundColor: const Color(0xFF233986),
          title: const Text(
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
              color: const Color(0xFF0f1482),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Kode Absen:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                KodeAbsenWidget(kodeAbsen: _kodeAbsenstate),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: generateKodeBaru,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white
                  ),
                  child: const Text(
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

