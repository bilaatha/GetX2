import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/Home_Controller.dart';

class listScreen extends StatelessWidget {
  const listScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('list page'),
      ),
      body: Column(
       children: [
         TextField(
             controller: hc.namaSiswa,
             decoration: InputDecoration(label: Text("inputnama")) ,
        ),
          ElevatedButton(
            onPressed: (){
            hc.Addlist(hc.namaSiswa.text);
        },
          child: Text("sumbit")),
        ],
    ),
    );
  }
}
