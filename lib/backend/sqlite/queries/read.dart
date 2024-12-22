import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN READWIDGETCATEGORIES
Future<List<ReadWidgetCategoriesRow>> performReadWidgetCategories(
  Database database,
) {
  final query = '''
SELECT * FROM widget_categories ORDER BY "order" ASC;

''';
  return _readQuery(database, query, (d) => ReadWidgetCategoriesRow(d));
}

class ReadWidgetCategoriesRow extends SqliteRow {
  ReadWidgetCategoriesRow(Map<String, dynamic> data) : super(data);

  String get id => data['id'] as String;
  String get title => data['title'] as String;
}

/// END READWIDGETCATEGORIES

/// BEGIN READWIDGETS
Future<List<ReadWidgetsRow>> performReadWidgets(
  Database database, {
  String? widgetCategoryRef,
}) {
  final query = '''
SELECT * FROM widgets WHERE widget_category_ref='${widgetCategoryRef}' ORDER BY "order" ASC;

''';
  return _readQuery(database, query, (d) => ReadWidgetsRow(d));
}

class ReadWidgetsRow extends SqliteRow {
  ReadWidgetsRow(Map<String, dynamic> data) : super(data);

  String get id => data['id'] as String;
  String get title => data['title'] as String;
}

/// END READWIDGETS
