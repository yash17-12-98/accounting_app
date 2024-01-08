// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cost_centre.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CostCentreAdapter extends TypeAdapter<CostCentre> {
  @override
  final int typeId = 2;

  @override
  CostCentre read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CostCentre(
      costCentreId: fields[0] == null ? 'CostCenter_Id' : fields[0] as String,
      costCentreName:
          fields[1] == null ? 'CostCentre_Name' : fields[1] as String,
      divisionId: fields[2] == null ? 'Division_Id' : fields[2] as String,
      status: fields[3] == null ? 'status' : fields[3] as String?,
      createdAt: fields[4] == null ? 'createdAt' : fields[4] as String?,
      createdBy: fields[5] == null ? 'createdBy' : fields[5] as String?,
      updatedAt: fields[6] == null ? 'updatedAt' : fields[6] as String?,
      updatedBy: fields[7] == null ? 'updatedBy' : fields[7] as String?,
      deletedAt: fields[8] == null ? 'deletedAt' : fields[8] as String?,
      deletedBy: fields[9] == null ? 'deletedBy' : fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CostCentre obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.costCentreId)
      ..writeByte(1)
      ..write(obj.costCentreName)
      ..writeByte(2)
      ..write(obj.divisionId)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(5)
      ..write(obj.createdBy)
      ..writeByte(6)
      ..write(obj.updatedAt)
      ..writeByte(7)
      ..write(obj.updatedBy)
      ..writeByte(8)
      ..write(obj.deletedAt)
      ..writeByte(9)
      ..write(obj.deletedBy);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CostCentreAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
