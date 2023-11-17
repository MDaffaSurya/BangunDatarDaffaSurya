import 'package:bangun_datar_kelas_b/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
   PersegiPage ({super.key});
final PersegiController _persegicontroller= Get.put(PersegiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title:const Text("Persegi Page"),),
      body: Column(
        children: [
          Image.asset("assets/persegi.jpeg", height: 100,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Persegi", style: TextStyle(color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Persegi adalah Bangun Datar yang memiliki 4 sisi'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              onChanged: (value){
                _persegicontroller.sisi = int.parse(value);
              },

              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Sisi",
                  hintText: "Masukkan Sisi",
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
                  _persegicontroller.hitungLuas();
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
                    _persegicontroller.hitungKel();
                  }, child: Text("Hitung keliling ", style: TextStyle(color: Colors.black )),
                ),
              ),
            ],
          ),
          Obx(() => Text(_persegicontroller.hasil.value, style: TextStyle(color: _persegicontroller.warna1.value),))
        ],
      ),
    );
  }
}
