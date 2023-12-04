import '../database.dart';

class FamiliaTable extends SupabaseTable<FamiliaRow> {
  @override
  String get tableName => 'familia';

  @override
  FamiliaRow createRow(Map<String, dynamic> data) => FamiliaRow(data);
}

class FamiliaRow extends SupabaseDataRow {
  FamiliaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FamiliaTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get familiaTipo => getField<String>('familia_tipo');
  set familiaTipo(String? value) => setField<String>('familia_tipo', value);

  String? get gasto => getField<String>('gasto');
  set gasto(String? value) => setField<String>('gasto', value);

  String? get subpresupuesto => getField<String>('subpresupuesto');
  set subpresupuesto(String? value) =>
      setField<String>('subpresupuesto', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
