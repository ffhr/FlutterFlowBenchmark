import '../database.dart';

class StudentsTable extends SupabaseTable<StudentsRow> {
  @override
  String get tableName => 'students';

  @override
  StudentsRow createRow(Map<String, dynamic> data) => StudentsRow(data);
}

class StudentsRow extends SupabaseDataRow {
  StudentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StudentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  bool get isVisible => getField<bool>('is_visible')!;
  set isVisible(bool value) => setField<bool>('is_visible', value);

  int get order => getField<int>('order')!;
  set order(int value) => setField<int>('order', value);
}
