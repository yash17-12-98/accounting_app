import 'package:accounting_app/services/local_database/database_service.dart';

class UserAuthRepository {
  final DatabaseService databaseService;

  UserAuthRepository(this.databaseService);

  bool checkValidUser(int mobile, int mPin) {
    try {
      final userList = databaseService.getUserList();

      if (userList.isNotEmpty) {
        return userList
            .any((element) => element.mobile == mobile && element.mPin == mPin);
      }
      return false;
    } catch (e) {
      print("Exception: ${e.toString()}");
      return false;
    }
  }
}
