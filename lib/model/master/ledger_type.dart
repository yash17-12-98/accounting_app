import 'package:hive/hive.dart';

part 'ledger_type.g.dart';

@HiveType(typeId: 1)
class LedgerType extends HiveObject {
  @HiveField(0, defaultValue: 'ledgerType_id')
  String ledgerTypeId;
  @HiveField(1, defaultValue: 'ledgerType_name')
  String ledgerTypeName;
  @HiveField(2, defaultValue: 'ledgerType_remarks')
  String ledgerTypeRemarks;
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

  LedgerType(
      {required this.ledgerTypeId,
      required this.ledgerTypeName,
      required this.ledgerTypeRemarks,
      this.status,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.updatedBy,
      this.deletedAt,
      this.deletedBy});
}
