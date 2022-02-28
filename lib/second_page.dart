import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var a=0.obs;

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Obx(()=> Text('var=$a',style: TextStyle(fontSize: 50),)),
          ElevatedButton(onPressed: ()=>a++, child:Text('increment')),
          ElevatedButton(
            onPressed: () => Get.back(),
            child: Text('Back'),
          ),
        ]),
      ),
    );
  }
}
