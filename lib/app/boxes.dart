import 'package:hive/hive.dart';

import '../model/model.dart';
import 'app_constant.dart';

class HiveBox {
  static Box<User> userBox() => Hive.box<User>(AppConstant.userBox);
}