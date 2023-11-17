import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas =0, tinggi = 0, sisimiring = 0, sisia = 0, sisib = 0, sisic = 0;
  final hasil = "".obs;
  final warna1 = Rx<Color>(Colors.black);

  void hitungLuas(){
    double hitung = 0.5* alas * tinggi;
    warna1.value = Colors.blue;
    hasil.value = "hasil Perhitungan luas dari 1/2 x  $alas x $tinggi = $hitung";
  }
  void hitungKel(){
    int hitung = sisia+sisib+sisic;
    warna1.value = Colors.grey;
    hasil.value = "hasil Perhitungan keliling dari $sisia + $sisib + $sisic = $hitung";
  }
}