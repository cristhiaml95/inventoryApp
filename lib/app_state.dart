import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _currentUserId = prefs.getString('ff_currentUserId') ?? _currentUserId;
    });
    _safeInit(() {
      _currentUserName =
          prefs.getString('ff_currentUserName') ?? _currentUserName;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_userRow')) {
        try {
          final serializedData = prefs.getString('ff_userRow') ?? '{}';
          _userRow =
              SupabaseRowStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _currentUserId = '';
  String get currentUserId => _currentUserId;
  set currentUserId(String _value) {
    _currentUserId = _value;
    prefs.setString('ff_currentUserId', _value);
  }

  String _currentUserName = '';
  String get currentUserName => _currentUserName;
  set currentUserName(String _value) {
    _currentUserName = _value;
    prefs.setString('ff_currentUserName', _value);
  }

  bool _showFullList = true;
  bool get showFullList => _showFullList;
  set showFullList(bool _value) {
    _showFullList = _value;
  }

  SupabaseRowStruct _userRow = SupabaseRowStruct();
  SupabaseRowStruct get userRow => _userRow;
  set userRow(SupabaseRowStruct _value) {
    _userRow = _value;
    prefs.setString('ff_userRow', _value.serialize());
  }

  void updateUserRowStruct(Function(SupabaseRowStruct) updateFn) {
    updateFn(_userRow);
    prefs.setString('ff_userRow', _userRow.serialize());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
