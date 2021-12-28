import 'package:bytebank2/database/dao/contact_dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(),
      'bytebank02.db'); // make the configuration to join the strings data according to the system (android, ios)
  return openDatabase(path, onCreate: (db, version) {
    // creating the database
    db.execute(ContactDao.tableSql);
  }, version: 1,
    // onDowngrade: onDatabaseDowngradeDelete, // to clean the database
  );
}


