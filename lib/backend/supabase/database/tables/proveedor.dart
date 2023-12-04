import '../database.dart';

class ProveedorTable extends SupabaseTable<ProveedorRow> {
  @override
  String get tableName => 'proveedor';

  @override
  ProveedorRow createRow(Map<String, dynamic> data) => ProveedorRow(data);
}

class ProveedorRow extends SupabaseDataRow {
  ProveedorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProveedorTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get razonSocial => getField<String>('razon_social');
  set razonSocial(String? value) => setField<String>('razon_social', value);

  String? get ruc => getField<String>('ruc');
  set ruc(String? value) => setField<String>('ruc', value);

  String? get ubicacion => getField<String>('ubicacion');
  set ubicacion(String? value) => setField<String>('ubicacion', value);

  String? get nombreComercial => getField<String>('nombre_comercial');
  set nombreComercial(String? value) =>
      setField<String>('nombre_comercial', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
