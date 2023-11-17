import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranController extends GetxController{
  int r =0;
  final hasil = "".obs;
  final warna1 = Rx<Color>(Colors.black);

  void hitungLuas(){
    double hitung = 3.14*(r*r);
    warna1.value = Colors.blue;
    hasil.value = "hasil Perhitungan luas dari phi x ($r x $r) = $hitung";
  }
  void hitungKel(){
    double hitung = 2*(3.14*r);
    warna1.value = Colors.grey;
    hasil.value = "hasil Perhitungan keliling dari 2 x (phi x $r) = $hitung";
  }
}