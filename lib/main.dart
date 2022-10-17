import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';



Future<void> main() async {
  await GetStorage.init('app_storage');
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      theme: ThemeData(fontFamily: 'Poppins_Regular'),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
