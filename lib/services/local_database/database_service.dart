import '../../model/model.dart';

abstract class DatabaseService {
  List<User> getUserList();

  addUser(User user);
}
