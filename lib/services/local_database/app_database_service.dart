import 'package:accounting_app/app/boxes.dart';
import 'package:accounting_app/model/user/user.dart';
import 'package:accounting_app/services/local_database/database_service.dart';

class AppDatabaseService extends DatabaseService {
  @override
  bool checkValidUser(int mobile, int mPin) {
    final box = HiveBox.userBox();
    final users = box.values.cast<User>().toList();

    return users
        .any((element) => element.mobile == mobile && element.mPin == mPin);
  }
}
