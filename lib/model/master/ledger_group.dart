import 'package:hive/hive.dart';

part 'ledger_group.g.dart';

@HiveType(typeId: 6)
class LedgerGroup extends HiveObject {
  @HiveField(0, defaultValue: 'ledgerGroup_id')
  String ledgerGroupId;

  @HiveField(1, defaultValue: 'ledgerGroup_name')
  String ledgerGroupName;

  @HiveField(2, defaultValue: 'ledgerGroup_remarks')
  String ledgerGroupRemarks;

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

  LedgerGroup(
      {required this.ledgerGroupId,
      required this.ledgerGroupName,
      required this.ledgerGroupRemarks,
      this.status,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.updatedBy,
      this.deletedAt,
      this.deletedBy});
}
