import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'GetController.dart';

class Get_API extends StatefulWidget {
   Get_API({Key? key}) : super(key: key);

  @override
  State<Get_API> createState() => _Get_APIState();
}

class _Get_APIState extends State<Get_API> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GController gController = Get.put(GController());
    gController.getUserResponse();
  }
  Widget build(BuildContext context) {
   return  Scaffold(
          appBar: AppBar(title: Text("Get API"),),
          body : GetX(
            init: GController(),
            builder: (GController gController) {
              // return    ListView.builder(
              //     itemCount: gController.finalList.length,
              //     itemBuilder: (context,index) => ListTile(
              //       leading: Text("${gController.finalList[index].id}"),
              //     ));
              return Column(
                children: [
                  Text("${gController.finalList[0].firstName}")
                ],
              );
            },

          )
        );
  }
}
