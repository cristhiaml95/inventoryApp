import '../database.dart';

class ModulosTable extends SupabaseTable<ModulosRow> {
  @override
  String get tableName => 'modulos';

  @override
  ModulosRow createRow(Map<String, dynamic> data) => ModulosRow(data);
}

class ModulosRow extends SupabaseDataRow {
  ModulosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ModulosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get modulo => getField<String>('modulo');
  set modulo(String? value) => setField<String>('modulo', value);
}
