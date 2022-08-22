import 'package:sqflite/sqflite.dart';

import 'package:sqflite/sqflite.dart';
import 'package:verse_app/Models/UserProfile.dart';

class DatabaseClass {
  static const String databaseName = 'profile.db';
  static const String tablename = 'user.db';
  final String _username = 'Username';
  final String _name = 'Name';
  final String _nickname = 'Nickname';
  final String _gender = 'Gender';
  final String _phoneNumber = 'Phone Number';
  final String _location = 'Location';
  final String _seeProfile = "See Profile";
  final String _birthday = 'Birthday';
  final String _avatar = 'Avatar';

  Future<Database> opendb() async {
    return await openDatabase(
      databaseName,
      version: 1,
      onCreate: _Oncreate,
    );
  }

  _Oncreate(Database db, int version) async {
    await db.execute(
        '''CREATE TABLE $tablename (id Integer primary key, $_username text,
    $_name text, $_nickname text, $_gender text, $_phoneNumber text, $_location text
    $_seeProfile text, $_birthday text, $_avatar text)''');
  }

  insertProfileDatabase(Map<String, Object?> profile) async {
    Database db = await opendb();

    await db.transaction((txn) async {
      Batch bt = txn.batch();
      bt.insert(tablename, profile);
      bt.commit(continueOnError: true);
    });
  }

  // Future<Map<String, Object?>> queryDatabase() async {
  //   Database db = await opendb();
  // }
}
