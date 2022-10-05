import 'dart:ffi';
import 'dart:io';
import 'package:flutter_pract1/common/data_base_request.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class DataBaseHelper {
  static final DataBaseHelper instance = DataBaseHelper._instance();
  DataBaseHelper._instance();

  late final Directory _appDocumentDirectory;
  late final String _pathDb;
  late final Database dataBase;
  int _version = 1;

  Future<void> init() async {
    _appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    _pathDb = join(_appDocumentDirectory.path, 'boocksstore.db');

    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    } else {
      dataBase = await openDatabase(_pathDb,
          version: _version, onCreate: ((db, version) {}));
    }
  }

  Future<void> onCreateTable(Database db) async {
    for (var i = 0; i < DataBaseRequest.createTableList.length; i++) {
      db.execute(DataBaseRequest.createTableList[i]);
    }
  }
}
