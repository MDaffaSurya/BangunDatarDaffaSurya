import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi =0;
  final hasil = "".obs;
  final warna1 = Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = sisi*sisi;
    warna1.value = Colors.blue;
    hasil.value = "hasil Perhitungan luas dari $sisi x $sisi = $hitung";
  }
  void hitungKel(){
    int hitung = sisi*4;
    warna1.value = Colors.grey;
    hasil.value = "hasil Perhitungan keliling dari $sisi = $hitung";
  }
}