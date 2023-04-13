import 'dart:developer';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'GetAppUtil.dart';
import 'UserResponse.dart';
import 'dart:convert';
class  GController extends GetxController{
  List<dataList> finalList = [];
 UserResponse userResponse = UserResponse();
  getUserResponse()async{
   var url = Uri.parse('${GetUtil.BASE_URL} + ${GetUtil.user} + "?page=2"');
   var response = await http.get(url);
   try{
     if(response.statusCode == 200){
       userResponse = UserResponse.fromJson(json.decode(response.body));
       finalList.addAll(userResponse.data!);
       print(finalList[0].firstName);
     }
     else{
       print('No Data Found!');
     }
     update();
     return finalList;
   }
   catch(e){
     log(e.toString());

     throw e;
   }

  }

}
