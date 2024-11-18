import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class DatabaseService {
  static final DatabaseService instance = DatabaseService._constructor();
  static Database? _db;

  //names of tables and columns
  final String _questiontable = "questions";
  final String _questionday = "day";
  final String _questionnumber = "qnumber";
  final String _questiontext = "qtext";
  final String _questioncorrectoption = "correctoption";

  final String _optiontable = "options";
  final String _optionnumber = "optionnumber";
  final String _optiontext = "optiontext";


  DatabaseService._constructor();

  Future<Database> get database async {
    if(_db != null) return _db!;
    _db = await getDatabase();
    return _db!;
  }

  Future<Database> getDatabase() async {
    final databaseDirPath = await getDatabasesPath();
    final databasePath = join(databaseDirPath, "master_db.db");
    final database = await openDatabase(
      databasePath,
      onCreate: (db, version) {
        db.execute('''
        CREATE TABLE $_questiontable (
          $_questionday INTEGER NOT NULL,
          $_questionnumber INTEGER NOT NULL,
          $_questiontext TEXT NOT NULL,
          $_questioncorrectoption INTEGER NOT NULL,
          PRIMARY KEY($_questionday, $_questionnumber)
        )
        ''');
        db.execute('''
        CREATE TABLE $_optiontable (
          $_questionday INTEGER NOT NULL,
          $_questionnumber INTEGER NOT NULL,
          $_optionnumber INTEGER NOT NULL,
          $_optiontext TEXT NOT NULL,
          PRIMARY KEY($_questionday, $_questionnumber, $_optionnumber),
          FOREIGN KEY($_questionday, $_questionnumber)
        )
        ''');
      },
    );
    return database;
  }

  void addQuestion(String content, int day, int qnumber, int correctoption) async {
    final db =  await database;
    await db.insert(_questiontable,
    {
      _questionday: day,
      _questionnumber: qnumber,
      _questiontext: content,
      _questioncorrectoption: correctoption
    });
  }

  void addOption(String content, int day, int qnumber, int optionnumber) async {
    final db = await database;
    await db.insert(_optiontable,
    {
      _questionday: day,
      _questionnumber: qnumber,
      _optionnumber: optionnumber,
      _optiontext: content
    });
  }
}