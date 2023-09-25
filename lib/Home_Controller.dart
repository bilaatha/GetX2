import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  static final HomeController _instance = HomeController._internal();

  factory HomeController() {
    return _instance;
  }

  HomeController._internal();

  TextEditingController editKelas=TextEditingController();
  TextEditingController namaSiswa=TextEditingController();
  TextEditingController namaMatpel=TextEditingController();
  TextEditingController jnsMatpel=TextEditingController();

  RxBool isOpen=RxBool(true);
  RxInt count =RxInt(0);
  RxList<String> AddNamaSiswa =RxList<String>([]);
  RxMap<String, String> ListMatpel = RxMap<String, String>({});
  TextEditingController namaController=TextEditingController();


  // simple state
  String nama='';

  void GantiNilai(String mn){
    nama=mn;
    update();
  }

  //RxBool isOpen = RxBool(true);

  void setIsOpen(bool Open){
    isOpen(Open);
    print(isOpen.value);
  }

  RxInt x = 0.obs;

  void tambah(){
    x.value++;
  }

  void kurang(){
    x.value--;
  }
  void Addlist (String nama) {
    AddNamaSiswa.add (nama);
    print(ListMatpel.value);
  }
  void addMapel(String namaMatpel, String Kodematpel) {
    ListMatpel[namaMatpel] = Kodematpel;
  }
  void tambahKeLizt(String nama){
    AddNamaSiswa.add(nama);
    namaSiswa.text ='';
    print(namaSiswa.value);
  }
  void addSiswa(String nama){
    AddNamaSiswa.add(nama);
    namaSiswa.text ='';
    print(namaSiswa.value);
  }

  void removeSiswa(int index) {
   AddNamaSiswa.removeAt(index);
  }

  void addMatpel(String nmMatpel, String jnsMatpel){
    ListMatpel[ nmMatpel ]= jnsMatpel;
    print( ListMatpel.value);
  }
  RxInt angka = RxInt(25);
  void addAngka () {
    if(tog.value) return;
    if(angka.value == 35){
      tog(true);
      return;
    }
    angka.value++;
  }

  void removeAngka () {
    if(tog.value) return;
    if(angka.value - 1 <= 0) return;
    angka.value--;
  }
  RxBool tog = RxBool(false);
  void setTog (bool toggle) {
    tog(toggle);
  }
}







