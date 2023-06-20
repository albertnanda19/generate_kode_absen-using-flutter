import 'package:flutter/material.dart';
import 'package:generate_kode_absen/controller/kode_absen_controller.dart';

class KodeAbsenWidget extends StatelessWidget {
  final KodeAbsenController kodeAbsen;

  const KodeAbsenWidget({super.key, required this.kodeAbsen});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xFF808080),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          kodeAbsen.kode,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins'
          ),
        ),
      ),
    );
  }
}