import '../database.dart';

class SupabaseProductionTable extends SupabaseTable<SupabaseProductionRow> {
  @override
  String get tableName => 'supabase_production';

  @override
  SupabaseProductionRow createRow(Map<String, dynamic> data) =>
      SupabaseProductionRow(data);
}

class SupabaseProductionRow extends SupabaseDataRow {
  SupabaseProductionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SupabaseProductionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
