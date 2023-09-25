import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/tambah_nama_siswa.dart';
import 'package:untitled/add_matpel.dart';
import 'package:untitled/edit_kelas.dart';
import 'package:untitled/nilai_awal.dart';
import 'inDec_screen.dart';
import 'package:untitled/List_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     getPages: [
      GetPage(name: "/", page: ()=>MyApp()),
       GetPage(name: "/editKelas", page: ()=> EditKelas()),
       GetPage(name: "/indec", page: ()=>InDecScreen()),
       GetPage(name: "/listsc", page: ()=>listScreen()),
       GetPage(name: "/matpel", page: ()=>MapPage()),
       GetPage(name: "/snack", page: ()=>Snack()),

      ],
       title: 'Flutter Demo',
       theme: ThemeData(

         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
         useMaterial3: true,
       ),
       home: const Snack(),

    );
  }
}