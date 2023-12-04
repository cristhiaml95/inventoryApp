import '../database.dart';

class PresupuestoTable extends SupabaseTable<PresupuestoRow> {
  @override
  String get tableName => 'presupuesto';

  @override
  PresupuestoRow createRow(Map<String, dynamic> data) => PresupuestoRow(data);
}

class PresupuestoRow extends SupabaseDataRow {
  PresupuestoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PresupuestoTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get supervisor => getField<String>('supervisor');
  set supervisor(String? value) => setField<String>('supervisor', value);

  int? get evento => getField<int>('evento');
  set evento(int? value) => setField<int>('evento', value);

  DateTime? get fechaInicio => getField<DateTime>('fecha_inicio');
  set fechaInicio(DateTime? value) => setField<DateTime>('fecha_inicio', value);

  DateTime? get fechaFin => getField<DateTime>('fecha_fin');
  set fechaFin(DateTime? value) => setField<DateTime>('fecha_fin', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  double? get presupuesto => getField<double>('presupuesto');
  set presupuesto(double? value) => setField<double>('presupuesto', value);

  double? get manoObra => getField<double>('mano_obra');
  set manoObra(double? value) => setField<double>('mano_obra', value);

  double? get materiales => getField<double>('materiales');
  set materiales(double? value) => setField<double>('materiales', value);

  double? get herramientas => getField<double>('herramientas');
  set herramientas(double? value) => setField<double>('herramientas', value);

  double? get fletes => getField<double>('fletes');
  set fletes(double? value) => setField<double>('fletes', value);

  double? get viaticos => getField<double>('viaticos');
  set viaticos(double? value) => setField<double>('viaticos', value);

  double? get otros => getField<double>('otros');
  set otros(double? value) => setField<double>('otros', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);

  String? get cliente => getField<String>('cliente');
  set cliente(String? value) => setField<String>('cliente', value);

  String? get ocQuery => getField<String>('oc_query');
  set ocQuery(String? value) => setField<String>('oc_query', value);

  String? get ordenCompra => getField<String>('orden_compra');
  set ordenCompra(String? value) => setField<String>('orden_compra', value);

  String? get otroCliente => getField<String>('otro_cliente');
  set otroCliente(String? value) => setField<String>('otro_cliente', value);

  double? get porcUtilidad => getField<double>('porc_utilidad');
  set porcUtilidad(double? value) => setField<double>('porc_utilidad', value);

  double? get porcMateriales => getField<double>('porc_materiales');
  set porcMateriales(double? value) =>
      setField<double>('porc_materiales', value);

  String? get fleteViaticoQuery => getField<String>('flete_viatico_query');
  set fleteViaticoQuery(String? value) =>
      setField<String>('flete_viatico_query', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
