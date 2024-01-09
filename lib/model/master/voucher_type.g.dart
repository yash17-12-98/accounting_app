// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VoucherTypeAdapter extends TypeAdapter<VoucherType> {
  @override
  final int typeId = 8;

  @override
  VoucherType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VoucherType(
      voucherTypeId: fields[0] == null ? 'voucherType_id' : fields[0] as String,
      voucherTypeName:
          fields[1] == null ? 'voucherType_name' : fields[1] as String,
      voucherTypeRemarks:
          fields[2] == null ? 'voucherType_remarks' : fields[2] as String,
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
  void write(BinaryWriter writer, VoucherType obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.voucherTypeId)
      ..writeByte(1)
      ..write(obj.voucherTypeName)
      ..writeByte(2)
      ..write(obj.voucherTypeRemarks)
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
      other is VoucherTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
