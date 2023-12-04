import '../database.dart';

class InventarioTable extends SupabaseTable<InventarioRow> {
  @override
  String get tableName => 'inventario';

  @override
  InventarioRow createRow(Map<String, dynamic> data) => InventarioRow(data);
}

class InventarioRow extends SupabaseDataRow {
  InventarioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InventarioTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

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

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get nombreImagen => getField<String>('nombre_imagen');
  set nombreImagen(String? value) => setField<String>('nombre_imagen', value);
}
