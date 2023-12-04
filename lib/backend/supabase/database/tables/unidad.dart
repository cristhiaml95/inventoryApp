import '../database.dart';

class UnidadTable extends SupabaseTable<UnidadRow> {
  @override
  String get tableName => 'unidad';

  @override
  UnidadRow createRow(Map<String, dynamic> data) => UnidadRow(data);
}

class UnidadRow extends SupabaseDataRow {
  UnidadRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UnidadTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get unidad => getField<String>('unidad');
  set unidad(String? value) => setField<String>('unidad', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
