import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import "package:shadcn_u_i_kit_v48jv9/backend/schema/structs/index.dart"
    as shadcn_u_i_kit_v48jv9_data_schema;
import "package:shadcn_u_i_kit_v48jv9/backend/schema/enums/enums.dart"
    as shadcn_u_i_kit_v48jv9_enums;
import 'backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<LatLng> _latlng = [
    LatLng(34.0522, -118.2437),
    LatLng(48.8566, 2.3522),
    LatLng(-27.4698, 153.0251)
  ];
  List<LatLng> get latlng => _latlng;
  set latlng(List<LatLng> value) {
    _latlng = value;
  }

  void addToLatlng(LatLng value) {
    latlng.add(value);
  }

  void removeFromLatlng(LatLng value) {
    latlng.remove(value);
  }

  void removeAtIndexFromLatlng(int index) {
    latlng.removeAt(index);
  }

  void updateLatlngAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    latlng[index] = updateFn(_latlng[index]);
  }

  void insertAtIndexInLatlng(int index, LatLng value) {
    latlng.insert(index, value);
  }

  List<WidgetCategoryStruct> _cWidgetCategories = [
    WidgetCategoryStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Commonly Used Elements\",\"order\":\"1000\",\"id\":\"wc_0001\"}')),
    WidgetCategoryStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Layout Elements\",\"order\":\"2000\",\"id\":\"wc_0002\"}')),
    WidgetCategoryStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Base Elements\",\"order\":\"3000\",\"id\":\"wc_0003\"}')),
    WidgetCategoryStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Page Elements\",\"order\":\"4000\",\"id\":\"wc_0004\"}')),
    WidgetCategoryStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Form Elements\",\"order\":\"5000\",\"id\":\"wc_0005\"}'))
  ];
  List<WidgetCategoryStruct> get cWidgetCategories => _cWidgetCategories;
  set cWidgetCategories(List<WidgetCategoryStruct> value) {
    _cWidgetCategories = value;
  }

  void addToCWidgetCategories(WidgetCategoryStruct value) {
    cWidgetCategories.add(value);
  }

  void removeFromCWidgetCategories(WidgetCategoryStruct value) {
    cWidgetCategories.remove(value);
  }

  void removeAtIndexFromCWidgetCategories(int index) {
    cWidgetCategories.removeAt(index);
  }

  void updateCWidgetCategoriesAtIndex(
    int index,
    WidgetCategoryStruct Function(WidgetCategoryStruct) updateFn,
  ) {
    cWidgetCategories[index] = updateFn(_cWidgetCategories[index]);
  }

  void insertAtIndexInCWidgetCategories(int index, WidgetCategoryStruct value) {
    cWidgetCategories.insert(index, value);
  }

  List<WidgetStruct> _cWidgets = [
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Text\",\"order\":\"10010\",\"widgetCategoryId\":\"wc_0001\",\"id\":\"wi_1001\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Column\",\"order\":\"10020\",\"widgetCategoryId\":\"wc_0001\",\"id\":\"wi_1002\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Row\",\"order\":\"10030\",\"widgetCategoryId\":\"wc_0001\",\"id\":\"wi_1003\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Container\",\"order\":\"10040\",\"widgetCategoryId\":\"wc_0001\",\"id\":\"wi_1004\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Row\",\"order\":\"20020\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2002\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"RadioButton\",\"order\":\"50070\",\"widgetCategoryId\":\"wc_0005\",\"id\":\"wi_5007\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"PinCode\",\"order\":\"50080\",\"widgetCategoryId\":\"wc_0005\",\"id\":\"wi_5008\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"CheckboxListTile\",\"order\":\"50040\",\"widgetCategoryId\":\"wc_0005\",\"id\":\"wi_5004\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Image\",\"order\":\"10050\",\"widgetCategoryId\":\"wc_0001\",\"id\":\"wi_1005\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Button\",\"order\":\"10060\",\"widgetCategoryId\":\"wc_0001\",\"id\":\"wi_1006\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Container\",\"order\":\"20010\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2001\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Column\",\"order\":\"20030\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2003\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Stack\",\"order\":\"20040\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2004\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Card\",\"order\":\"20050\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2005\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"ListView\",\"order\":\"20060\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2006\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"GridView\",\"order\":\"20070\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2007\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Spacer\",\"order\":\"20080\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2008\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Divider\",\"order\":\"20090\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2009\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"VerticalDivider\",\"order\":\"20100\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2010\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"TabBar\",\"order\":\"20110\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2011\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"PageView\",\"order\":\"20120\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2012\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Carousel\",\"order\":\"20130\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2013\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Expandable\",\"order\":\"20140\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2014\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Wrap\",\"order\":\"20150\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2015\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Form Validation\",\"order\":\"20160\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2016\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"StaggeredView\",\"order\":\"20170\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2017\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"FlippableCard\",\"order\":\"20180\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2018\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"SwipeableStack\",\"order\":\"20190\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2019\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"DataTable\",\"order\":\"20200\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2020\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Flex\",\"order\":\"20210\",\"widgetCategoryId\":\"wc_0002\",\"id\":\"wi_2021\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Text\",\"order\":\"30010\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3001\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"RichText\",\"order\":\"30020\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3002\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Image\",\"order\":\"30030\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3003\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"CircleImage\",\"order\":\"30040\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3004\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Icon\",\"order\":\"30050\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3005\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Button\",\"order\":\"30060\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3006\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"IconButton\",\"order\":\"30070\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3007\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"ListTile\",\"order\":\"30080\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3008\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"SlidableListTile\",\"order\":\"30090\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3009\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"VideoPlayer\",\"order\":\"30100\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3010\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"YoutubePlayer\",\"order\":\"30110\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3011\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Calendar\",\"order\":\"30120\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3012\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"ToggleIcon\",\"order\":\"30130\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3013\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"AudioPlayer\",\"order\":\"30140\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3014\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"WebView\",\"order\":\"30150\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3015\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"AppBar\",\"order\":\"40010\",\"widgetCategoryId\":\"wc_0004\",\"id\":\"wi_4001\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"FAB\",\"order\":\"40020\",\"widgetCategoryId\":\"wc_0004\",\"id\":\"wi_4002\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Drawer\",\"order\":\"40030\",\"widgetCategoryId\":\"wc_0004\",\"id\":\"wi_4003\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"EndDrawer\",\"order\":\"40040\",\"widgetCategoryId\":\"wc_0004\",\"id\":\"wi_4004\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"TextField\",\"order\":\"50010\",\"widgetCategoryId\":\"wc_0005\",\"id\":\"wi_5001\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"DropDown\",\"order\":\"50020\",\"widgetCategoryId\":\"wc_0005\",\"id\":\"wi_5002\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Checkbox\",\"order\":\"50030\",\"widgetCategoryId\":\"wc_0005\",\"id\":\"wi_5003\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Switch\",\"order\":\"50050\",\"widgetCategoryId\":\"wc_0005\",\"id\":\"wi_5005\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"SwitchListTile\",\"order\":\"50060\",\"widgetCategoryId\":\"wc_0005\",\"id\":\"wi_5006\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Slider\",\"order\":\"50090\",\"widgetCategoryId\":\"wc_0005\",\"id\":\"wi_5009\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"RatingBar\",\"order\":\"50100\",\"widgetCategoryId\":\"wc_0005\",\"id\":\"wi_5010\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"CreditCardForm\",\"order\":\"50110\",\"widgetCategoryId\":\"wc_0005\",\"id\":\"wi_5011\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Counter Button\",\"order\":\"50120\",\"widgetCategoryId\":\"wc_0005\",\"id\":\"wi_5012\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"ChoiceChips\",\"order\":\"50130\",\"widgetCategoryId\":\"wc_0005\",\"id\":\"wi_5013\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"PlacePicker\",\"order\":\"50140\",\"widgetCategoryId\":\"wc_0005\",\"id\":\"wi_5014\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"StaticMap\",\"order\":\"30160\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3016\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"GoogleMap\",\"order\":\"30170\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3017\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"AdBanner\",\"order\":\"30180\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3018\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"LottieAnimation\",\"order\":\"30190\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3019\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Blur\",\"order\":\"30200\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3020\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Transform\",\"order\":\"30210\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3021\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"MediaDisplay\",\"order\":\"30220\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3022\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"RiveAnimation\",\"order\":\"30230\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3023\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"PdfViewer\",\"order\":\"30240\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3024\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"ProgressBar\",\"order\":\"30250\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3025\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"LanguageSelector\",\"order\":\"30260\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3026\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Badge\",\"order\":\"30270\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3027\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Chart\",\"order\":\"30280\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3028\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"MuxBroadcast\",\"order\":\"30290\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3029\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Timer\",\"order\":\"30300\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3030\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"MouseRegion\",\"order\":\"30310\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3031\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Barcode\",\"order\":\"30320\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3032\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"DataTable\",\"order\":\"30330\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3033\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Tooltip\",\"order\":\"30340\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3034\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"ConditionalBuilder\",\"order\":\"30350\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3035\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"StickyHeader\",\"order\":\"30360\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3036\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Markdown\",\"order\":\"30370\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3037\"}')),
    WidgetStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Draggable\",\"order\":\"30380\",\"widgetCategoryId\":\"wc_0003\",\"id\":\"wi_3038\"}'))
  ];
  List<WidgetStruct> get cWidgets => _cWidgets;
  set cWidgets(List<WidgetStruct> value) {
    _cWidgets = value;
  }

  void addToCWidgets(WidgetStruct value) {
    cWidgets.add(value);
  }

  void removeFromCWidgets(WidgetStruct value) {
    cWidgets.remove(value);
  }

  void removeAtIndexFromCWidgets(int index) {
    cWidgets.removeAt(index);
  }

  void updateCWidgetsAtIndex(
    int index,
    WidgetStruct Function(WidgetStruct) updateFn,
  ) {
    cWidgets[index] = updateFn(_cWidgets[index]);
  }

  void insertAtIndexInCWidgets(int index, WidgetStruct value) {
    cWidgets.insert(index, value);
  }
}
