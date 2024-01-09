import 'package:hive/hive.dart';

part 'general_ledger.g.dart';

@HiveType(typeId: 7)
class GeneralLedger extends HiveObject {
  @HiveField(0, defaultValue: 'general_ledger_id')
  String generalLedgerId;

  @HiveField(1, defaultValue: 'ledgerType_id')
  String ledgerTypeId;

  @HiveField(2, defaultValue: 'mainSchedule_id')
  String mainScheduleId;

  @HiveField(3, defaultValue: 'subSchedule_id')
  String subScheduleId;

  @HiveField(4, defaultValue: 'ledgerGroup_id')
  String ledgerGroupId;

  @HiveField(5, defaultValue: 'general_ledger_name')
  String generalLedgerName;

  @HiveField(6, defaultValue: 'general_ledger_remarks')
  String generalLedgerRemarks;

  @HiveField(7, defaultValue: 'status')
  String? status;

  @HiveField(8, defaultValue: 'createdAt')
  String? createdAt;

  @HiveField(9, defaultValue: 'createdBy')
  String? createdBy;

  @HiveField(10, defaultValue: 'updatedAt')
  String? updatedAt;

  @HiveField(11, defaultValue: 'updatedBy')
  String? updatedBy;

  @HiveField(12, defaultValue: 'deletedAt')
  String? deletedAt;

  @HiveField(13, defaultValue: 'deletedBy')
  String? deletedBy;

  GeneralLedger(
      {required this.generalLedgerId,
      required this.ledgerTypeId,
      required this.mainScheduleId,
      required this.subScheduleId,
      required this.ledgerGroupId,
      required this.generalLedgerName,
      required this.generalLedgerRemarks,
      this.status,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.updatedBy,
      this.deletedAt,
      this.deletedBy});
}
