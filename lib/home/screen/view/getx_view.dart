import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home/screen/controller/getx_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GetController getController = Get.put(GetController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     "Getx",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),centerTitle: true,backgroundColor: Colors.black26,
        // ),
        body: Center(
          child: Obx(() => Text("${getController.i}",style: TextStyle(fontSize: 30),)),
        ),
        floatingActionButton: Row(
          children: [
            SizedBox(width: 70),
            Padding(
              padding: const EdgeInsets.all(5),
              child: FloatingActionButton(
                onPressed: () {
                  getController.i++;
                  Get.snackbar("Notification", "${getController.i}",
                      backgroundColor: Colors.grey.shade400);
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.grey.shade600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: FloatingActionButton(
                onPressed: () {
                  getController.i--;
                  Get.snackbar("Notification", "${getController.i}",
                      backgroundColor: Colors.grey.shade400);
                },
                child: Icon(Icons.minimize),
                backgroundColor: Colors.grey.shade600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: FloatingActionButton(
                onPressed: () {
                  getController.i.value = (getController.i * 2).toInt();
                  Get.snackbar("Notification", "${getController.i}",
                      backgroundColor: Colors.grey.shade400);
                },
                child: Text("2x"),
                backgroundColor: Colors.grey.shade600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: FloatingActionButton(
                onPressed: () {
                  getController.i.value = (getController.i * 4).toInt();
                  Get.snackbar("Notification", "${getController.i}",
                      backgroundColor: Colors.grey.shade400);
                },
                child: Text("4x"),
                backgroundColor: Colors.grey.shade600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: FloatingActionButton(
                onPressed: () {
                  getController.i.value = (getController.i * 6).toInt();
                  Get.snackbar("Notification", "${getController.i}",
                      backgroundColor: Colors.grey.shade400);
                },
                child: Text("6x"),
                backgroundColor: Colors.grey.shade600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: FloatingActionButton(
                onPressed: () {
                  getController.i.value = (getController.i * 8).toInt();
                  Get.snackbar("Notification", "${getController.i}",
                      backgroundColor: Colors.grey.shade400);
                },
                child: Text("8x"),
                backgroundColor: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
