import '../database.dart';

class MainMenuTable extends SupabaseTable<MainMenuRow> {
  @override
  String get tableName => 'main_menu';

  @override
  MainMenuRow createRow(Map<String, dynamic> data) => MainMenuRow(data);
}

class MainMenuRow extends SupabaseDataRow {
  MainMenuRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MainMenuTable();

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
