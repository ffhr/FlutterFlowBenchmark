import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'ffbenchmarkdb',
      'ff_benchmark_db.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<ReadWidgetCategoriesRow>> readWidgetCategories() =>
      performReadWidgetCategories(
        _database,
      );

  Future<List<ReadWidgetsRow>> readWidgets({
    String? widgetCategoryRef,
  }) =>
      performReadWidgets(
        _database,
        widgetCategoryRef: widgetCategoryRef,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  /// END UPDATE QUERY CALLS
}
