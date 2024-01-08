import 'package:hive/hive.dart';

part 'division.g.dart';

@HiveType(typeId: 1)
class Division extends HiveObject {
  @HiveField(0, defaultValue: 'Division_Id')
  String divisionId;
  @HiveField(1, defaultValue: 'Division_Name')
  String divisionName;
  @HiveField(2, defaultValue: 'status')
  String? status;
  @HiveField(3, defaultValue: 'createdAt')
  String? createdAt;
  @HiveField(4, defaultValue: 'createdBy')
  String? createdBy;
  @HiveField(5, defaultValue: 'updatedAt')
  String? updatedAt;
  @HiveField(6, defaultValue: 'updatedBy')
  String? updatedBy;
  @HiveField(7, defaultValue: 'deletedAt')
  String? deletedAt;
  @HiveField(8, defaultValue: 'deletedBy')
  String? deletedBy;

  Division(
      {required this.divisionId,
      required this.divisionName,
      this.status,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.updatedBy,
      this.deletedAt,
      this.deletedBy});
}
