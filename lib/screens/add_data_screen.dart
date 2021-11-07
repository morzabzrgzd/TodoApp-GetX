import 'package:flutter/material.dart';
import 'package:frontend/controller/home_controller.dart';
import 'package:get/get.dart';

class AddDataScreen extends StatefulWidget {
  const AddDataScreen({Key? key}) : super(key: key);

  @override
  State<AddDataScreen> createState() => _AddDataScreenState();
}
  var controller = Get.put(HomeController());
class _AddDataScreenState extends State<AddDataScreen> {
  final textController = TextEditingController();
  void addData() {
    if (textController.text.isEmpty) {
      return;
    }
    controller.addData(textController.text);
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Add Data'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textController,
                decoration: const InputDecoration(hintText: 'Add Data'),
              ),
              ElevatedButton(
                  onPressed: () {
                    addData();
                  },
                  child: const Text('Add'))
            ],
          ),
        ),
      ),
    );
  }
}
