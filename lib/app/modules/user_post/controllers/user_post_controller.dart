import 'dart:io';
import 'package:aust_textile_alumni/app/modules/user_post/providers/user_post_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UserPostController extends GetxController {
  //TODO: Implement UserPostController

  final count = 0.obs;


  var selectedImagePath = ''.obs;

   File? imageFile;


  var postTitle = ''.obs;
  var postType = ''.obs;
  var postDescription = ''.obs;
  var postedBy = '1234'.obs;
  var date = DateTime.now().toString().substring(0,16);
  var isPublished = '0';

  var isLoading = false.obs;


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;


  Future<void> getImage() async {

    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      imageFile = File(pickedFile.path);
    } else {
      print("No image selected");
    }
  }

  Future<void> uploadUserPost() async {

    isLoading.value = true;

    var status = await UserPostProvider()
        .uploadPost(postTitle.toString(), postType.toString(), postDescription.toString(), postedBy.toString(), date.toString(), isPublished.toString(), imageFile as File);
    print("login status ......." + status.toString());

    if (status == true) {
      isLoading.value = false;
      Get.snackbar(
        "Status",
        "Post Uploaded",
        colorText: Colors.white,
        backgroundColor:Color(0xff00602B),
        snackPosition: SnackPosition.BOTTOM,

      );
    } else {
      isLoading.value = false;
      Get.snackbar(
        "Status",
        "Could not Registered the User",
        colorText: Colors.white,
        backgroundColor:Color(0xff00602B),
        snackPosition: SnackPosition.BOTTOM,

      );
    }
  }
}
