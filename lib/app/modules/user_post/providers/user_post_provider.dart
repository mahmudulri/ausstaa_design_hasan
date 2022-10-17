import 'package:get/get.dart';
import 'dart:io';

class UserPostProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<dynamic?> uploadPost(String title, String type, String description,String post_by,
      String date, String isPublish, File image_file ) async {
    var userData = new Map();
    userData['post_title'] = title;
    userData['post_type'] = type;
    userData['post_description'] = description;
    userData['posted_by'] = post_by;
    userData['date'] = date;
    userData['isPublished'] = isPublish;
    userData['image'] = image_file;

    final String? logInToken = '198|pJ2sBQdL9dNXW13DdtgfmizUC8qEXvpOiQNRD5DX';

    var response =
    await post("http://172.31.120.238:80/api/save-post", userData,
        headers: {'Authorization': 'Bearer $logInToken'});


    print("errorprovider //////////" + userData.toString());

    print("errorprovider1 //////////" + response.statusCode.toString());

    if (response.statusCode == 200) {
      print("errorafterhit //////////" + response.body.toString());

      try {
        if (response.body['status'] == 200) {
          print("bodystatus //////////" + response.body['status'].toString());
          return true;
        }
      } catch (e) {
        print(e.toString());
      }

      //  return response.body;
    } else {
      return false;
    }
  }
}
