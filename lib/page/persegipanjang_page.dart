import 'package:bangun_datar_kelas_b/controller/persegipanjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage ({super.key});
  final PersegiPanjangController _persegipanjangcontroller= Get.put(PersegiPanjangController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title:const Text("PersegiPanjang Page"),),
      body: Column(
        children: [
          Image.asset("assets/persegipanjang.jpeg", height: 100,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Persegi Panjang", style: TextStyle(color: Colors.black),),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text('Persegi panjang adalah suatu segi empat yang keempat sudutnya siku-siku dan panjang sisi-sisi yang berhadapan sama.'),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    onChanged: (value){
                      _persegipanjangcontroller.panjang = int.parse(value);
                    },

                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Panjang",
                        hintText: "Masukkan panjang",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),


                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: TextFormField(
                    onChanged: (value){
                      _persegipanjangcontroller.lebar = int.parse(value);
                    },

                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Lebar",
                        hintText: "Masukkan Lebar",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),


                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent.shade400, //warna background button
                          shadowColor: Colors.grey.shade300, //warna shadow button
                          elevation: 8.0, //untuk menyesuaikan posisi radius shadow
                        ),
                        onPressed: (){
                          _persegipanjangcontroller.hitungLuas();
                        }, child: Text("Hitung Luas ",style: TextStyle(color: Colors.white )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade400, //warna background button
                          shadowColor: Colors.grey.shade300, //warna shadow button
                          elevation: 8.0, //untuk menyesuaikan posisi radius shadow
                        ),
                        onPressed: (){
                          _persegipanjangcontroller.hitungKel();
                        }, child: Text("Hitung keliling ", style: TextStyle(color: Colors.black )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Obx(() => Text(_persegipanjangcontroller.hasil.value, style: TextStyle(color: _persegipanjangcontroller.warna1.value),))
        ],
      ),
    );
  }
}
