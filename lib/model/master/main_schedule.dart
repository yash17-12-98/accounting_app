import 'package:hive/hive.dart';

part 'main_schedule.g.dart';

@HiveType(typeId: 4)
class MainSchedule extends HiveObject {
  @HiveField(0, defaultValue: 'mainSchedule_id')
  String mainScheduleId;

  @HiveField(1, defaultValue: 'mainSchedule_name')
  String mainScheduleName;

  @HiveField(2, defaultValue: 'mainSchedule_remarks')
  String mainScheduleRemarks;

  @HiveField(3, defaultValue: 'status')
  String? status;

  @HiveField(4, defaultValue: 'createdAt')
  String? createdAt;

  @HiveField(5, defaultValue: 'createdBy')
  String? createdBy;

  @HiveField(6, defaultValue: 'updatedAt')
  String? updatedAt;

  @HiveField(7, defaultValue: 'updatedBy')
  String? updatedBy;

  @HiveField(8, defaultValue: 'deletedAt')
  String? deletedAt;

  @HiveField(9, defaultValue: 'deletedBy')
  String? deletedBy;

  MainSchedule(
      {required this.mainScheduleId,
      required this.mainScheduleName,
      required this.mainScheduleRemarks,
      this.status,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.updatedBy,
      this.deletedAt,
      this.deletedBy});
}
