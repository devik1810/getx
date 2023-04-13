import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx/home/screen/view/getx_view.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {'/': (p0) => HomeView()
    },
  ));
}
