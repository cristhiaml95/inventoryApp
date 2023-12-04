import '../database.dart';

class NivelesTable extends SupabaseTable<NivelesRow> {
  @override
  String get tableName => 'niveles';

  @override
  NivelesRow createRow(Map<String, dynamic> data) => NivelesRow(data);
}

class NivelesRow extends SupabaseDataRow {
  NivelesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NivelesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get nivel => getField<int>('nivel');
  set nivel(int? value) => setField<int>('nivel', value);
}
