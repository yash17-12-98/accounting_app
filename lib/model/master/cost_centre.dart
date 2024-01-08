import 'package:hive/hive.dart';

part 'cost_centre.g.dart';

@HiveType(typeId: 2)
class CostCentre extends HiveObject {
  @HiveField(0, defaultValue: 'CostCenter_Id')
  String costCentreId;
  @HiveField(1, defaultValue: 'CostCentre_Name')
  String costCentreName;
  @HiveField(2, defaultValue: 'Division_Id')
  String divisionId;
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

  CostCentre(
      {required this.costCentreId,
      required this.costCentreName,
      required this.divisionId,
      this.status,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.updatedBy,
      this.deletedAt,
      this.deletedBy});
}
