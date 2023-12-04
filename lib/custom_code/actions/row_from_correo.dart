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

Future<UsuariosRow?> rowFromCorreo(
  String? correo1,
  String? columna1,
  String? tabla1,
) async {
  // Add your function code here!
  if (correo1 == null ||
      correo1.isEmpty ||
      columna1 == null ||
      columna1.isEmpty ||
      tabla1 == null ||
      tabla1.isEmpty) {
    // Si alguno de los parámetros es null o vacío, retornamos null.
    return null;
  }

  // Inicializamos el cliente de Supabase.
  // Reemplaza 'your-supabase-url' y 'your-supabase-anon-key' con los valores reales de tu proyecto en Supabase.
  final supabase = SupabaseClient('https://ywcdfkqspyqdmbovtsog.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl3Y2Rma3FzcHlxZG1ib3Z0c29nIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU0NTg2NzYsImV4cCI6MjAxMTAzNDY3Nn0.xkt5wxB7H1LKjjpp4pF06ZaVoRZlm_Z4aAo0FOibWk0');

  try {
    // Realizamos la consulta a Supabase.
    final response =
        await supabase.from(tabla1).select().eq(columna1, correo1).execute();

    // Verificamos si la respuesta contiene alguna fila.
    final rows = response.data as List<dynamic>;
    if (rows.isNotEmpty) {
      // Si se encuentra al menos una fila, retornamos la primera fila.
      return UsuariosRow(rows[0]);
    } else {
      // Si no se encuentra ninguna fila, retornamos null.
      return null;
    }
  } catch (e) {
    // Si ocurre algún error durante la consulta, lo imprimimos en la consola y retornamos null.
    print('Error al buscar la fila en Supabase: $e');
    return null;
  }
}
