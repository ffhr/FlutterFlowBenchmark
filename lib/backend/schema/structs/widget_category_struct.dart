// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WidgetCategoryStruct extends BaseStruct {
  WidgetCategoryStruct({
    String? title,
    int? order,
    String? id,
  })  : _title = title,
        _order = order,
        _id = id;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  set order(int? val) => _order = val;

  void incrementOrder(int amount) => order = order + amount;

  bool hasOrder() => _order != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static WidgetCategoryStruct fromMap(Map<String, dynamic> data) =>
      WidgetCategoryStruct(
        title: data['title'] as String?,
        order: castToType<int>(data['order']),
        id: data['id'] as String?,
      );

  static WidgetCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? WidgetCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'order': _order,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'order': serializeParam(
          _order,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static WidgetCategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      WidgetCategoryStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        order: deserializeParam(
          data['order'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WidgetCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WidgetCategoryStruct &&
        title == other.title &&
        order == other.order &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([title, order, id]);
}

WidgetCategoryStruct createWidgetCategoryStruct({
  String? title,
  int? order,
  String? id,
}) =>
    WidgetCategoryStruct(
      title: title,
      order: order,
      id: id,
    );
