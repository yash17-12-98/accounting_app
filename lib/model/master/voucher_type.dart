import 'package:hive/hive.dart';

part 'voucher_type.g.dart';

@HiveType(typeId: 8)
class VoucherType extends HiveObject {
  @HiveField(0, defaultValue: 'voucherType_id')
  String voucherTypeId;

  @HiveField(1, defaultValue: 'voucherType_name')
  String voucherTypeName;

  @HiveField(2, defaultValue: 'voucherType_remarks')
  String voucherTypeRemarks;

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

  VoucherType(
      {required this.voucherTypeId,
      required this.voucherTypeName,
      required this.voucherTypeRemarks,
      this.status,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.updatedBy,
      this.deletedAt,
      this.deletedBy});
}
