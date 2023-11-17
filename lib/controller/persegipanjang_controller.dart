import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int panjang =0;
  int lebar =0;
  final hasil = "".obs;
  final warna1 = Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = panjang*lebar;
    warna1.value = Colors.blue;
    hasil.value = "hasil Perhitungan luas dari $panjang x $lebar = $hitung";
  }
  void hitungKel(){
    int hitung = 2*(panjang+lebar);
    warna1.value = Colors.grey;
    hasil.value = "hasil Perhitungan keliling dari 2 x ($panjang + $lebar) = $hitung";
  }
}