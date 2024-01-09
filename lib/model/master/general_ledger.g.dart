// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_ledger.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GeneralLedgerAdapter extends TypeAdapter<GeneralLedger> {
  @override
  final int typeId = 7;

  @override
  GeneralLedger read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GeneralLedger(
      generalLedgerId:
          fields[0] == null ? 'general_ledger_id' : fields[0] as String,
      ledgerTypeId: fields[1] == null ? 'ledgerType_id' : fields[1] as String,
      mainScheduleId:
          fields[2] == null ? 'mainSchedule_id' : fields[2] as String,
      subScheduleId: fields[3] == null ? 'subSchedule_id' : fields[3] as String,
      ledgerGroupId: fields[4] == null ? 'ledgerGroup_id' : fields[4] as String,
      generalLedgerName:
          fields[5] == null ? 'general_ledger_name' : fields[5] as String,
      generalLedgerRemarks:
          fields[6] == null ? 'general_ledger_remarks' : fields[6] as String,
      status: fields[7] == null ? 'status' : fields[7] as String?,
      createdAt: fields[8] == null ? 'createdAt' : fields[8] as String?,
      createdBy: fields[9] == null ? 'createdBy' : fields[9] as String?,
      updatedAt: fields[10] == null ? 'updatedAt' : fields[10] as String?,
      updatedBy: fields[11] == null ? 'updatedBy' : fields[11] as String?,
      deletedAt: fields[12] == null ? 'deletedAt' : fields[12] as String?,
      deletedBy: fields[13] == null ? 'deletedBy' : fields[13] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, GeneralLedger obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.generalLedgerId)
      ..writeByte(1)
      ..write(obj.ledgerTypeId)
      ..writeByte(2)
      ..write(obj.mainScheduleId)
      ..writeByte(3)
      ..write(obj.subScheduleId)
      ..writeByte(4)
      ..write(obj.ledgerGroupId)
      ..writeByte(5)
      ..write(obj.generalLedgerName)
      ..writeByte(6)
      ..write(obj.generalLedgerRemarks)
      ..writeByte(7)
      ..write(obj.status)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.createdBy)
      ..writeByte(10)
      ..write(obj.updatedAt)
      ..writeByte(11)
      ..write(obj.updatedBy)
      ..writeByte(12)
      ..write(obj.deletedAt)
      ..writeByte(13)
      ..write(obj.deletedBy);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeneralLedgerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
