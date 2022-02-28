import 'package:get/get.dart';

class ApiService extends GetxController{

  var data=[].obs;


  getData(){
    //suppose that data comes from the backend

    for(int i=0;i<10;i++){

      data.add(i);

    }

  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getData();
  }



}