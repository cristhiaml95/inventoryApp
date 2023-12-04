import '../database.dart';

class VInventarioFullTable extends SupabaseTable<VInventarioFullRow> {
  @override
  String get tableName => 'v_inventario_full';

  @override
  VInventarioFullRow createRow(Map<String, dynamic> data) =>
      VInventarioFullRow(data);
}

class VInventarioFullRow extends SupabaseDataRow {
  VInventarioFullRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VInventarioFullTable();

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get producto => getField<String>('producto');
  set producto(String? value) => setField<String>('producto', value);

  String? get talla => getField<String>('talla');
  set talla(String? value) => setField<String>('talla', value);

  String? get imagenUrl => getField<String>('imagen_url');
  set imagenUrl(String? value) => setField<String>('imagen_url', value);

  String? get nombreComun => getField<String>('nombre_comun');
  set nombreComun(String? value) => setField<String>('nombre_comun', value);

  String? get ubicacion => getField<String>('ubicacion');
  set ubicacion(String? value) => setField<String>('ubicacion', value);

  String? get moduloId => getField<String>('modulo_id');
  set moduloId(String? value) => setField<String>('modulo_id', value);

  String? get nivelId => getField<String>('nivel_id');
  set nivelId(String? value) => setField<String>('nivel_id', value);

  String? get userTipeador => getField<String>('user_tipeador');
  set userTipeador(String? value) => setField<String>('user_tipeador', value);

  String? get familiaId => getField<String>('familia_id');
  set familiaId(String? value) => setField<String>('familia_id', value);

  String? get unidadId => getField<String>('unidad_id');
  set unidadId(String? value) => setField<String>('unidad_id', value);

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get nombreImagen => getField<String>('nombre_imagen');
  set nombreImagen(String? value) => setField<String>('nombre_imagen', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get familia => getField<String>('familia');
  set familia(String? value) => setField<String>('familia', value);

  String? get modulo => getField<String>('modulo');
  set modulo(String? value) => setField<String>('modulo', value);

  int? get nivel => getField<int>('nivel');
  set nivel(int? value) => setField<int>('nivel', value);

  double? get ingresos => getField<double>('ingresos');
  set ingresos(double? value) => setField<double>('ingresos', value);

  double? get egresos => getField<double>('egresos');
  set egresos(double? value) => setField<double>('egresos', value);

  double? get stockActual => getField<double>('stock_actual');
  set stockActual(double? value) => setField<double>('stock_actual', value);
}
