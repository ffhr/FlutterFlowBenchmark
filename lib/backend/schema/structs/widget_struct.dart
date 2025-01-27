// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WidgetStruct extends BaseStruct {
  WidgetStruct({
    String? title,
    int? order,
    String? widgetCategoryId,
    String? id,
  })  : _title = title,
        _order = order,
        _widgetCategoryId = widgetCategoryId,
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

  // "widgetCategoryId" field.
  String? _widgetCategoryId;
  String get widgetCategoryId => _widgetCategoryId ?? '';
  set widgetCategoryId(String? val) => _widgetCategoryId = val;

  bool hasWidgetCategoryId() => _widgetCategoryId != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static WidgetStruct fromMap(Map<String, dynamic> data) => WidgetStruct(
        title: data['title'] as String?,
        order: castToType<int>(data['order']),
        widgetCategoryId: data['widgetCategoryId'] as String?,
        id: data['id'] as String?,
      );

  static WidgetStruct? maybeFromMap(dynamic data) =>
      data is Map ? WidgetStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'order': _order,
        'widgetCategoryId': _widgetCategoryId,
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
        'widgetCategoryId': serializeParam(
          _widgetCategoryId,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static WidgetStruct fromSerializableMap(Map<String, dynamic> data) =>
      WidgetStruct(
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
        widgetCategoryId: deserializeParam(
          data['widgetCategoryId'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WidgetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WidgetStruct &&
        title == other.title &&
        order == other.order &&
        widgetCategoryId == other.widgetCategoryId &&
        id == other.id;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, order, widgetCategoryId, id]);
}

WidgetStruct createWidgetStruct({
  String? title,
  int? order,
  String? widgetCategoryId,
  String? id,
}) =>
    WidgetStruct(
      title: title,
      order: order,
      widgetCategoryId: widgetCategoryId,
      id: id,
    );
