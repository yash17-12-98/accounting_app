import 'package:hive/hive.dart';

part 'sub_schedule.g.dart';

@HiveType(typeId: 5)
class SubSchedule extends HiveObject {
  @HiveField(0, defaultValue: 'subSchedule_id')
  String subScheduleId;

  @HiveField(1, defaultValue: 'subSchedule_name')
  String subScheduleName;

  @HiveField(2, defaultValue: 'subSchedule_remarks')
  String subScheduleRemarks;

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

  SubSchedule(
      {required this.subScheduleId,
      required this.subScheduleName,
      required this.subScheduleRemarks,
      this.status,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.updatedBy,
      this.deletedAt,
      this.deletedBy});
}
