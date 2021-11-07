import 'package:get/get.dart';

class HomeController extends GetxController {
  List datas = [].obs;

  void addData(String data) {
    datas.insert(0, data);
  }
}
