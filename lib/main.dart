import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'getapi/GetApiScreen.dart';
void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Home_Page(),
        'gt' : (context) => Get_API(),
      },
    )
  );
}
class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API CALL"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Get.toNamed('gt');
            }, child: Text("Get Api (Simple)")),
            ElevatedButton(onPressed: (){}, child: Text("Post Api"))
          ],
        ),
      ),
    );
  }
}
