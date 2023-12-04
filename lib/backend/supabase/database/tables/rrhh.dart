import '../database.dart';

class RrhhTable extends SupabaseTable<RrhhRow> {
  @override
  String get tableName => 'rrhh';

  @override
  RrhhRow createRow(Map<String, dynamic> data) => RrhhRow(data);
}

class RrhhRow extends SupabaseDataRow {
  RrhhRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RrhhTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombreCompleto => getField<String>('nombre_completo');
  set nombreCompleto(String? value) =>
      setField<String>('nombre_completo', value);

  String? get dni => getField<String>('dni');
  set dni(String? value) => setField<String>('dni', value);

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);

  String? get imagenUrl => getField<String>('imagen_url');
  set imagenUrl(String? value) => setField<String>('imagen_url', value);

  DateTime? get fechaUem => getField<DateTime>('fecha_uem');
  set fechaUem(DateTime? value) => setField<DateTime>('fecha_uem', value);

  int? get mesesVig => getField<int>('meses_vig');
  set mesesVig(int? value) => setField<int>('meses_vig', value);

  String? get vigencia => getField<String>('vigencia');
  set vigencia(String? value) => setField<String>('vigencia', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
