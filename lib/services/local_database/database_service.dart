import '../../model/model.dart';

abstract class DatabaseService {
  updateAuthStatus({bool status = false});

  bool getAuthStatus();

  List<User> getUserList();

  addUser(User user);
}
