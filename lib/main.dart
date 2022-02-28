import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxflutter/second_page.dart';

import 'getx_controllers/api_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var apiService=Get.put(ApiService());

    return Scaffold(
      appBar:AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
        return  Center(child: Text(apiService.data[index].toString(),style: TextStyle(fontSize: 50)),);
      }),
    );
  }
}





