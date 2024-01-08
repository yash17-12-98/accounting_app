import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
class User extends HiveObject {
  @HiveField(0)
  String firstName;

  @HiveField(1)
  String lastName;

  @HiveField(2)
  String mobile;

  @HiveField(3)
  String deviceId;

  @HiveField(4)
  String mPin;

  User(
      {required this.firstName,
      required this.lastName,
      required this.mobile,
      required this.deviceId,
      required this.mPin});
}
