// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DivisionAdapter extends TypeAdapter<Division> {
  @override
  final int typeId = 1;

  @override
  Division read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Division(
      divisionId: fields[0] == null ? 'Division_Id' : fields[0] as String,
      divisionName: fields[1] == null ? 'Division_Name' : fields[1] as String,
      status: fields[2] == null ? 'status' : fields[2] as String?,
      createdAt: fields[3] == null ? 'createdAt' : fields[3] as String?,
      createdBy: fields[4] == null ? 'createdBy' : fields[4] as String?,
      updatedAt: fields[5] == null ? 'updatedAt' : fields[5] as String?,
      updatedBy: fields[6] == null ? 'updatedBy' : fields[6] as String?,
      deletedAt: fields[7] == null ? 'deletedAt' : fields[7] as String?,
      deletedBy: fields[8] == null ? 'deletedBy' : fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Division obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.divisionId)
      ..writeByte(1)
      ..write(obj.divisionName)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.createdBy)
      ..writeByte(5)
      ..write(obj.updatedAt)
      ..writeByte(6)
      ..write(obj.updatedBy)
      ..writeByte(7)
      ..write(obj.deletedAt)
      ..writeByte(8)
      ..write(obj.deletedBy);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DivisionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
