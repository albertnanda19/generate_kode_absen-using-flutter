import 'package:flutter/material.dart';

import '../../../main.dart';

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