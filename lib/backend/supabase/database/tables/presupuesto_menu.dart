import '../database.dart';

class PresupuestoMenuTable extends SupabaseTable<PresupuestoMenuRow> {
  @override
  String get tableName => 'presupuesto_menu';

  @override
  PresupuestoMenuRow createRow(Map<String, dynamic> data) =>
      PresupuestoMenuRow(data);
}

class PresupuestoMenuRow extends SupabaseDataRow {
  PresupuestoMenuRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PresupuestoMenuTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get vista => getField<String>('vista');
  set vista(String? value) => setField<String>('vista', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get imagenUrl => getField<String>('imagen_url');
  set imagenUrl(String? value) => setField<String>('imagen_url', value);

  int? get orden => getField<int>('orden');
  set orden(int? value) => setField<int>('orden', value);
}
