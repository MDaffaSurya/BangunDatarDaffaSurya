import 'package:bangun_datar_kelas_b/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage ({super.key});
  final SegitigaController _segitigacontroller= Get.put(SegitigaController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title:const Text("Segitiga Page"),),
      body: Column(
        children: [
          Image.asset("assets/segitiga.jpeg", height: 100,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Segitiga", style: TextStyle(color: Colors.black),),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text('Segitiga merupakan bangun datar yang dibatasi dengan adanya tiga buah sisi serta memiliki tiga buah titik sudut.'),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: TextFormField(
              onChanged: (value){
                _segitigacontroller.alas = int.parse(value);
              },

              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Alas",
                  hintText: "Masukkan alas",
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
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: TextFormField(
              onChanged: (value){
                _segitigacontroller.tinggi = int.parse(value);
              },

              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Tinggi",
                  hintText: "Masukkan Tinggi",
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
            padding: const EdgeInsets.symmetric(horizontal: 10 ,vertical: 10),
            child: TextFormField(
              onChanged: (value){
                _segitigacontroller.sisia = int.parse(value);
              },

              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "SisiA",
                  hintText: "Masukkan sisiA",
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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: TextFormField(
              onChanged: (value){
                _segitigacontroller.sisib = int.parse(value);
              },

              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "SisiB",
                  hintText: "Masukkan sisiB",
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
            padding: const EdgeInsets.symmetric(horizontal: 10 ),
            child: TextFormField(
              onChanged: (value){
                _segitigacontroller.sisic = int.parse(value);
              },

              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "SisiC",
                  hintText: "Masukkan sisiC",
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
                    _segitigacontroller.hitungLuas();
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
                    _segitigacontroller.hitungKel();
                  }, child: Text("Hitung keliling ", style: TextStyle(color: Colors.black )),
                ),
              ),
            ],
          ),
          Obx(() => Text(_segitigacontroller.hasil.value, style: TextStyle(color: _segitigacontroller.warna1.value),))
        ],
      ),
    );
  }
}
