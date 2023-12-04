import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://ywcdfkqspyqdmbovtsog.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl3Y2Rma3FzcHlxZG1ib3Z0c29nIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU0NTg2NzYsImV4cCI6MjAxMTAzNDY3Nn0.xkt5wxB7H1LKjjpp4pF06ZaVoRZlm_Z4aAo0FOibWk0';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
