// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

Future<bool?> correoInTable(
  String? correo1,
  String? columna1,
  String? tabla1,
) async {
  if (correo1 == null ||
      correo1.isEmpty ||
      columna1 == null ||
      columna1.isEmpty ||
      tabla1 == null ||
      tabla1.isEmpty) {
    // Si alguno de los parámetros es null o vacío, retornamos false.
    return false;
  }
  final supabase = SupabaseClient('https://ywcdfkqspyqdmbovtsog.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl3Y2Rma3FzcHlxZG1ib3Z0c29nIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU0NTg2NzYsImV4cCI6MjAxMTAzNDY3Nn0.xkt5wxB7H1LKjjpp4pF06ZaVoRZlm_Z4aAo0FOibWk0');
  final response =
      await supabase.from(tabla1).select().eq(columna1, correo1).execute();
  final rows = response.data as List<dynamic>;
  return rows.isNotEmpty;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
