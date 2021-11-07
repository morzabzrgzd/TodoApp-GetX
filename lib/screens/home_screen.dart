import 'package:flutter/material.dart';
import 'package:frontend/controller/home_controller.dart';
import 'package:frontend/screens/add_data_screen.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Todo App'),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(() => const AddDataScreen());
              },
              icon: const Icon(Icons.add),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Obx(
            () => controller.datas.isEmpty
                ? const Center(
                    child: Text('NO DATA'),
                  )
                : ListView.builder(
                    itemCount: controller.datas.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(controller.datas[index]),
                        ),
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
