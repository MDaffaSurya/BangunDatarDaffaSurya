import 'package:bangun_datar_kelas_b/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage ({super.key});
  final LingkaranController _lingkarancontroller= Get.put(LingkaranController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title:const Text("Lingkaran Page"),),
      body: Column(
        children: [
          Image.asset("assets/lingkaran.jpeg", height: 100,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Lingkaran", style: TextStyle(color: Colors.black),),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(' bangun datar dua dimensi yang terbentuk dari sekumpulan titik dengan jarak yang konstan atau teratur dari titik tetap pada sebuah bidang. '),
          ),
Container(
  decoration: BoxDecoration(
      color: Colors.green.shade300,borderRadius: BorderRadius.all(Radius.circular(10))
  ),
  margin: const EdgeInsets.all(8.0),
  padding: const EdgeInsets.all(8.0),
  child:Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: TextFormField(
          onChanged: (value){
            _lingkarancontroller.r = int.parse(value);
          },

          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: "jari-jari",
              hintText: "Masukkan jari-jari",
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
                _lingkarancontroller.hitungLuas();
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
                _lingkarancontroller.hitungKel();
              }, child: Text("Hitung keliling ", style: TextStyle(color: Colors.black )),
            ),
          ),
        ],
      ),
    ],
  ) ,
),
          Container(
            child: Column(
              children: [

              ],
            ),
          ),


          Obx(() => Text(_lingkarancontroller.hasil.value, style: TextStyle(color: _lingkarancontroller.warna1.value),))
        ],
      ),
    );
  }
}
