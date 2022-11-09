import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_practdva/common/data_base_request.dart';
import 'package:flutter_practdva/data/model/role.dart';
import 'package:flutter_practdva/data/model/user.dart';
import 'package:flutter_practdva/domain/entity/role_entity.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DataBaseHepler {
static final DataBaseHepler instance = DataBaseHepler._instance();

final int _version = 1;
late final String _pathDB;
late final Directory _appDocumentDirectory;
late final Database database;

DataBaseHepler._instance();

void init() async {
_appDocumentDirectory =
await path_provider.getApplicationDocumentsDirectory();

_pathDB = join(_appDocumentDirectory.path, "PR2.db");

if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
sqfliteFfiInit();
var databaseFactory = databaseFactoryFfi;
database = await databaseFactory.openDatabase(_pathDB,
options: OpenDatabaseOptions(
version: _version,
onCreate: (db, version) => onCreateTable(db),
onUpgrade: (db, oldVersion, newVersion) => onUpdateTable(db),
));
} else {
database = await openDatabase(_pathDB,
version: _version,
onCreate: (db, version) => onCreateTable(db),
onUpgrade: (db, version, newVersion) => onUpdateTable(db));
}
}

Future<void> onUpdateTable(Database db) async {
var tables = await db.rawQuery('SELECT name FROM sqlite_master');

for (var element in DataBaseRequest.tableList.reversed) {
if (tables.where((element) => element['name'] == element).isNotEmpty) {
await db.execute(DataBaseRequest.deleteTable(element));
}
}
}

Future<void> onInitTable(Database db) async {
try {
for (var element in RoleEnum.values) {
db.insert(DataBaseRequest.tableRole, Role(role: element.name).toMap());
}
} on DatabaseException catch (error) {}

db.insert(
DataBaseRequest.tableUser,
User(login: 'admon', idRole: RoleEnum.admin, password: 'qwerty')
.toMap());
}

Future<void> onCreateTable(Database db) async {
for (var tableCreate in DataBaseRequest.tebleCreatList) {
await db.execute(tableCreate);
}
await onInitTable(db);
}

Future<void> onDropDatabase() async {
database.close();
if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
sqfliteFfiInit();
databaseFactoryFfi.deleteDatabase(_pathDB);
} else {
deleteDatabase(_pathDB);
}
}
}
