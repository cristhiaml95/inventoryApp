import '../database.dart';

class InventarioMovimientoTable extends SupabaseTable<InventarioMovimientoRow> {
  @override
  String get tableName => 'inventario_movimiento';

  @override
  InventarioMovimientoRow createRow(Map<String, dynamic> data) =>
      InventarioMovimientoRow(data);
}

class InventarioMovimientoRow extends SupabaseDataRow {
  InventarioMovimientoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InventarioMovimientoTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get flujo => getField<String>('flujo');
  set flujo(String? value) => setField<String>('flujo', value);

  String? get itemId => getField<String>('item_id');
  set itemId(String? value) => setField<String>('item_id', value);

  double? get cantidad => getField<double>('cantidad');
  set cantidad(double? value) => setField<double>('cantidad', value);

  String? get imagenGuiaUrl => getField<String>('imagen_guia_url');
  set imagenGuiaUrl(String? value) =>
      setField<String>('imagen_guia_url', value);

  double? get precioXunidad => getField<double>('precioXunidad');
  set precioXunidad(double? value) => setField<double>('precioXunidad', value);

  String? get receptorId => getField<String>('receptor_id');
  set receptorId(String? value) => setField<String>('receptor_id', value);

  String? get moneda => getField<String>('moneda');
  set moneda(String? value) => setField<String>('moneda', value);

  String? get despachadorId => getField<String>('despachador_id');
  set despachadorId(String? value) => setField<String>('despachador_id', value);

  String? get solicitanteId => getField<String>('solicitante_id');
  set solicitanteId(String? value) => setField<String>('solicitante_id', value);

  String? get presupuestoId => getField<String>('presupuesto_id');
  set presupuestoId(String? value) => setField<String>('presupuesto_id', value);

  double? get precioSalida => getField<double>('precio_salida');
  set precioSalida(double? value) => setField<double>('precio_salida', value);

  String? get proveedorId => getField<String>('proveedor_id');
  set proveedorId(String? value) => setField<String>('proveedor_id', value);

  double? get tipoCambio => getField<double>('tipo_cambio');
  set tipoCambio(double? value) => setField<double>('tipo_cambio', value);

  String? get familiaId => getField<String>('familia_id');
  set familiaId(String? value) => setField<String>('familia_id', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get nombreImagen => getField<String>('nombre_imagen');
  set nombreImagen(String? value) => setField<String>('nombre_imagen', value);
}
