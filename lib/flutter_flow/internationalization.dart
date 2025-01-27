import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hrText = '',
  }) =>
      [enText, hrText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'qmtybz2h': {
      'en': 'FlutterFlowBenchmark',
      'hr': '',
    },
    'cqfw6n7y': {
      'en': 'FlutterFlowBenchmark',
      'hr': '',
    },
    'qh4n1szb': {
      'en': 'Supabase Realtime',
      'hr': '',
    },
    'pd1i6wjr': {
      'en': 'shadcn/ui',
      'hr': '',
    },
    '365aej3q': {
      'en': 'Home',
      'hr': '',
    },
  },
  // LoginPage
  {
    'fncjvmvi': {
      'en': 'Login with Google',
      'hr': '',
    },
    'd459vnwi': {
      'en': 'Login with Apple',
      'hr': '',
    },
    '4iq4rj30': {
      'en': 'Login Anonymously',
      'hr': '',
    },
    'docz679v': {
      'en': 'Email',
      'hr': '',
    },
    'wbnb8kq2': {
      'en': 'TextField',
      'hr': '',
    },
    'g8y69ejr': {
      'en': 'Password',
      'hr': '',
    },
    'irywohd8': {
      'en': 'TextField',
      'hr': '',
    },
    'ii97znke': {
      'en': 'Login email/password',
      'hr': '',
    },
    '6t8qzyow': {
      'en': 'Login @ FlutterFlowBenchmark',
      'hr': '',
    },
    '2di71r1l': {
      'en': 'Home',
      'hr': '',
    },
  },
  // ProfilePage
  {
    'ino7cfmk': {
      'en': 'TODO',
      'hr': '',
    },
    'amvsvlw6': {
      'en': 'Profile',
      'hr': '',
    },
    'm7t3k7fu': {
      'en': 'Home',
      'hr': '',
    },
  },
  // WidgetPage
  {
    'mgyw9vyh': {
      'en': 'Hello World',
      'hr': '',
    },
    'z8m415ny': {
      'en': 'Home',
      'hr': '',
    },
  },
  // SupabaseRealtime
  {
    'c0gcwh81': {
      'en': 'is_active=true',
      'hr': '',
    },
    'p82j9ia6': {
      'en': 'SET is_active=false',
      'hr': '',
    },
    'ynlvkiqc': {
      'en': 'is_active=false',
      'hr': '',
    },
    '3r78oax7': {
      'en': 'SET is_active=true',
      'hr': '',
    },
    'byh6eb93': {
      'en': 'realtime_all',
      'hr': '',
    },
    'ctvf1ycd': {
      'en': 'SET is_active=true',
      'hr': '',
    },
    'wknwlp37': {
      'en': 'SET is_active=false',
      'hr': '',
    },
    'xbelpkyd': {
      'en': 'single_time_query',
      'hr': '',
    },
    'y90eh24q': {
      'en': 'SET is_active=true',
      'hr': '',
    },
    '7hw88ix4': {
      'en': 'SET is_active=false',
      'hr': '',
    },
    'jrukaf6r': {
      'en': 'Supabase Realtime',
      'hr': '',
    },
    '2hbhiqmf': {
      'en': 'Home',
      'hr': '',
    },
  },
  // Shadcn
  {
    'ir1nlko1': {
      'en': 'shadcn/ui',
      'hr': '',
    },
    'gx0jcw99': {
      'en': 'Home',
      'hr': '',
    },
  },
  // WidgetText
  {
    'zplhao5t': {
      'en': 'Hello World',
      'hr': '',
    },
    '94on63aj': {
      'en': 'Hello World',
      'hr': '',
    },
  },
  // WidgetRichText
  {
    'g8dr1kzf': {
      'en': 'Introducing the ',
      'hr': '',
    },
    'l5clf4ft': {
      'en': '\"Aura\" ',
      'hr': '',
    },
    'nnrt2l1q': {
      'en': 'Smartwatch',
      'hr': '',
    },
    '87tb9g3t': {
      'en': 'Hello World',
      'hr': '',
    },
  },
  // WidgetCard
  {
    'iyzloja9': {
      'en': 'Hello World',
      'hr': '',
    },
    'zmxllr58': {
      'en': 'Hello World',
      'hr': '',
    },
    '09o6k2ns': {
      'en': 'Hello World',
      'hr': '',
    },
  },
  // WidgetListView
  {
    'r6r74503': {
      'en': 'title 1 ',
      'hr': '',
    },
    'ym47h0ti': {
      'en': 'description 1',
      'hr': '',
    },
    'c0r5ijyt': {
      'en': 'title 2',
      'hr': '',
    },
    'yycg4ikh': {
      'en': 'description 2',
      'hr': '',
    },
    '5l0jxch0': {
      'en': 'title 3',
      'hr': '',
    },
    'jiasyyrh': {
      'en': 'description 3',
      'hr': '',
    },
  },
  // WidgetGridView
  {
    '69f9d5hy': {
      'en': 'title 1',
      'hr': '',
    },
    'erqt4u67': {
      'en': 'title 2',
      'hr': '',
    },
    'tp8vcbu3': {
      'en': 'title 3',
      'hr': '',
    },
    'skpwsezp': {
      'en': 'title 4',
      'hr': '',
    },
  },
  // WidgetSpacer
  {
    'jwpvn23o': {
      'en': 'Hello World',
      'hr': '',
    },
    'crfcdf0r': {
      'en': 'Hello World',
      'hr': '',
    },
  },
  // WidgetDivider
  {
    'zjz4x2ze': {
      'en': 'Hello World',
      'hr': '',
    },
  },
  // WidgetsFromSqlLite
  {
    'j3786dv9': {
      'en': 'SQLite is not supported on this platform!',
      'hr': '',
    },
  },
  // WidgetVerticalDivider
  {
    'pwp5qvyj': {
      'en': 'Hello World',
      'hr': '',
    },
  },
  // WidgetFlippableCard
  {
    '8uz1ax4v': {
      'en': 'Name',
      'hr': '',
    },
    'c6cjcvt4': {
      'en': 'Description',
      'hr': '',
    },
    '4ehd3bci': {
      'en':
          'Bright turquoise walls surround a bustling market, filled with exotic scents and vibrant, handwoven textiles.\nBright turquoise walls surround a bustling market, filled with exotic scents and vibrant, handwoven textiles.',
      'hr': '',
    },
  },
  // WidgetTabBar
  {
    'mhcwfmgc': {
      'en': 'Tab 1',
      'hr': '',
    },
    'kd0k8a4w': {
      'en': 'Content of Tab 1',
      'hr': '',
    },
    '4jzh3hg2': {
      'en': 'Tab 2',
      'hr': '',
    },
    'o48nzznx': {
      'en': 'Content of Tab 2',
      'hr': '',
    },
    'pyscasr9': {
      'en': 'Tab 3',
      'hr': '',
    },
    'el5e200p': {
      'en': 'Content of Tab 3',
      'hr': '',
    },
  },
  // WidgetPageView
  {
    'm6rbn5fb': {
      'en': 'Content of PageView 1',
      'hr': '',
    },
    '531wk8fx': {
      'en': 'Content of PageView 2',
      'hr': '',
    },
    'zqwwfgd0': {
      'en': 'Content of PageView 3',
      'hr': '',
    },
  },
  // WidgetExpandable
  {
    '9efdit2w': {
      'en': 'A weathered map',
      'hr': '',
    },
    'fzez8drv': {
      'en': 'A weathered map, edges frayed...',
      'hr': '',
    },
    'zg0zgj9t': {
      'en':
          'A weathered map, edges frayed, hints at hidden paths through a forgotten forest. Sunlight filters softly.',
      'hr': '',
    },
  },
  // WidgetWrap
  {
    'zbwshw1m': {
      'en': 'Horizontal Wrap',
      'hr': '',
    },
    'tbomnlcy': {
      'en': 'title 1 ',
      'hr': '',
    },
    'negfja5f': {
      'en': 'description 1',
      'hr': '',
    },
    '3r0ow4wc': {
      'en': 'title 2',
      'hr': '',
    },
    'j23iy4g4': {
      'en': 'description 2',
      'hr': '',
    },
    'jwragmfn': {
      'en': 'title 3',
      'hr': '',
    },
    '9hoftpkv': {
      'en': 'description 3',
      'hr': '',
    },
    'vgbkzmdl': {
      'en': 'Vertical Wrap',
      'hr': '',
    },
    '0werf9oz': {
      'en': 'Button',
      'hr': '',
    },
    'zjt0kx6f': {
      'en': 'Button',
      'hr': '',
    },
    'w2kc94c1': {
      'en': 'Button',
      'hr': '',
    },
    'wquqm2dz': {
      'en': 'Button',
      'hr': '',
    },
    'jq7pds9f': {
      'en': 'Button',
      'hr': '',
    },
    '1xo3ajrg': {
      'en': 'Button',
      'hr': '',
    },
  },
  // WidgetFormValidation
  {
    'bsuydbqz': {
      'en': 'Email',
      'hr': '',
    },
    'z1c1pxic': {
      'en': 'Password',
      'hr': '',
    },
    'gmzrpq9l': {
      'en': 'Confirm Password',
      'hr': '',
    },
    'ouzplb5p': {
      'en': 'Sign Up',
      'hr': '',
    },
    'hjmbcoku': {
      'en': 'Email is required',
      'hr': '',
    },
    'inrztb6r': {
      'en': 'Wrong Email!',
      'hr': '',
    },
    'wsm4i6gf': {
      'en': 'Please choose an option from the dropdown',
      'hr': '',
    },
    '5pnh4add': {
      'en': 'Password is required',
      'hr': '',
    },
    '8on6vrjw': {
      'en': 'Please choose an option from the dropdown',
      'hr': '',
    },
    'ie4mh9wp': {
      'en': 'Confirm Password is required',
      'hr': '',
    },
    'qhf65pp0': {
      'en': 'Please choose an option from the dropdown',
      'hr': '',
    },
  },
  // WidgetStaggeredView
  {
    'ek5p4lz5': {
      'en': 'title 1 ',
      'hr': '',
    },
    'tz12pcci': {
      'en': 'description 1',
      'hr': '',
    },
    'onpyfryt': {
      'en': 'title 2',
      'hr': '',
    },
    'mytv6e26': {
      'en': 'description 2',
      'hr': '',
    },
    'o8ehqh6i': {
      'en': 'title 3',
      'hr': '',
    },
    'hixqgnrp': {
      'en': 'description 3',
      'hr': '',
    },
    'y2ms3i6z': {
      'en': 'title 4',
      'hr': '',
    },
    '17642uxy': {
      'en': 'description 4',
      'hr': '',
    },
  },
  // WidgetDataTable
  {
    '0vvjspov': {
      'en': 'name',
      'hr': '',
    },
    'wcybq7f8': {
      'en': 'email',
      'hr': '',
    },
  },
  // WidgetFlex
  {
    '33bqe9xl': {
      'en': 'Name',
      'hr': '',
    },
    '2jcz1i1a': {
      'en': 'Description',
      'hr': '',
    },
    'zui86h5x': {
      'en': 'Name',
      'hr': '',
    },
    'ht3wln17': {
      'en': 'Description',
      'hr': '',
    },
  },
  // WidgetButton
  {
    'ew6ltfk4': {
      'en': 'Button',
      'hr': '',
    },
  },
  // WidgeListTile
  {
    'o8hfxjxo': {
      'en': '5 Ways to Boost Your Productivity',
      'hr': '',
    },
    '8vycte8y': {
      'en': 'Simple Strategies for a More Focused You',
      'hr': '',
    },
  },
  // WidgeSlideableListTile
  {
    '3plw2gka': {
      'en': 'Delete',
      'hr': '',
    },
  },
  // WidgetTransform
  {
    'c7uzk1hn': {
      'en': 'Transform',
      'hr': '',
    },
  },
  // WidgetProgressBar
  {
    'qdww2ake': {
      'en': '70%',
      'hr': '',
    },
    '47hke2a8': {
      'en': '70%',
      'hr': '',
    },
  },
  // WidgetBadge
  {
    'yrhd9i57': {
      'en': '1',
      'hr': '',
    },
  },
  // WidgetChart
  {
    'pefo2pfk': {
      'en': 'LineChart',
      'hr': '',
    },
    'o6k37w11': {
      'en': 'Rent',
      'hr': '',
    },
    '5ob0q6n0': {
      'en': 'Price (\$)',
      'hr': '',
    },
    '8b2kafra': {
      'en': 'Value1',
      'hr': '',
    },
    '03fgp0ns': {
      'en': 'Value 2',
      'hr': '',
    },
    '6xk329ff': {
      'en': 'Value 3',
      'hr': '',
    },
    'mzp23r7z': {
      'en': 'Value 4',
      'hr': '',
    },
    'vsde21e2': {
      'en': 'Months',
      'hr': '',
    },
    '5y5uha3b': {
      'en': 'Price (\$)',
      'hr': '',
    },
    '1yakvrp0': {
      'en': 'BarChart',
      'hr': '',
    },
    '8s3yjh1b': {
      'en': 'Energy and Insurance',
      'hr': '',
    },
    'e2yonk26': {
      'en': 'LegendName',
      'hr': '',
    },
    'az9k8cau': {
      'en': 'Months',
      'hr': '',
    },
    'jb8ld51t': {
      'en': 'Price (\$)',
      'hr': '',
    },
    'sfgqhq69': {
      'en': 'PieChart',
      'hr': '',
    },
    '220q7gdj': {
      'en': 'Energy and Insurance',
      'hr': '',
    },
    'm9e3cxt9': {
      'en': 'Months',
      'hr': '',
    },
    '1c6wgn8q': {
      'en': 'Price (\$)',
      'hr': '',
    },
  },
  // WidgetTooltip
  {
    'qtk4q1pu': {
      'en': 'How to use Tooltip?',
      'hr': '',
    },
  },
  // WidgetStickyHeader
  {
    'ouzd52rr': {
      'en': 'A',
      'hr': '',
    },
  },
  // WidgetDraggable
  {
    'y6vcpb42': {
      'en': 'Drop Me Here',
      'hr': '',
    },
    'hatol4ka': {
      'en': 'Drag Me',
      'hr': '',
    },
  },
  // WidgetTextField
  {
    'b4r40mbp': {
      'en': 'Email',
      'hr': '',
    },
  },
  // WidgetDropDown
  {
    'q9sgyh1v': {
      'en': 'Select...',
      'hr': '',
    },
    'ueyz8ctl': {
      'en': 'Search...',
      'hr': '',
    },
    'qykpryg1': {
      'en': 'Option 1',
      'hr': '',
    },
    'zpeuds3p': {
      'en': 'Option 2',
      'hr': '',
    },
    'e1f3mizo': {
      'en': 'Option 3',
      'hr': '',
    },
  },
  // WidgetCheckbox
  {
    'tu8gzu3r': {
      'en': 'Hello World',
      'hr': '',
    },
  },
  // WidgetCheckboxListTile
  {
    'urxg1jyv': {
      'en': 'Title',
      'hr': '',
    },
    'ma6bq2zm': {
      'en': 'Subtitle',
      'hr': '',
    },
  },
  // WidgetSwitchListTile
  {
    '7i7hvlo1': {
      'en': 'Title',
      'hr': '',
    },
    'f17d4r4x': {
      'en': 'Subtitle',
      'hr': '',
    },
  },
  // WidgetRadioButton
  {
    'kqqkyafw': {
      'en': 'Option 1',
      'hr': '',
    },
    'c68r1upz': {
      'en': 'Option 2',
      'hr': '',
    },
    '4phdycf0': {
      'en': 'Option 3',
      'hr': '',
    },
  },
  // WidgetChoiceChips
  {
    'udxmurb5': {
      'en': 'Option 1',
      'hr': '',
    },
    'lgwm2fzh': {
      'en': 'Option 2',
      'hr': '',
    },
    'edi6h9m3': {
      'en': 'Option 3',
      'hr': '',
    },
    'vkvxudlo': {
      'en': 'Option 4',
      'hr': '',
    },
    '5nx0j5m1': {
      'en': 'Option 5',
      'hr': '',
    },
  },
  // WidgetPlacePicker
  {
    '5c98h2be': {
      'en': 'Select Location',
      'hr': '',
    },
  },
  // WidgetCheckboxGroup
  {
    'o71kzb1j': {
      'en': 'Option 1',
      'hr': '',
    },
    't1yoaj2i': {
      'en': 'Option 2',
      'hr': '',
    },
    'y5tkhltp': {
      'en': 'Option 3',
      'hr': '',
    },
    '10y33lqx': {
      'en': 'Option 4',
      'hr': '',
    },
  },
  // Miscellaneous
  {
    '7p2yegae': {
      'en': '',
      'hr': '',
    },
    'ww6hz3q2': {
      'en': '',
      'hr': '',
    },
    'h39zq8zr': {
      'en': '',
      'hr': '',
    },
    'mlcwzt2b': {
      'en': '',
      'hr': '',
    },
    'xgs25sbb': {
      'en': '',
      'hr': '',
    },
    'pwjruw7k': {
      'en': '',
      'hr': '',
    },
    'us03sz6k': {
      'en': '',
      'hr': '',
    },
    '1636b7d3': {
      'en': '',
      'hr': '',
    },
    'ycyz4dfx': {
      'en': '',
      'hr': '',
    },
    '4lfk63l0': {
      'en': '',
      'hr': '',
    },
    '883xi3wg': {
      'en': '',
      'hr': '',
    },
    'jfd1t13j': {
      'en': '',
      'hr': '',
    },
    'g2dhl1m7': {
      'en': '',
      'hr': '',
    },
    'hhznz06y': {
      'en': '',
      'hr': '',
    },
    'rfbutsdb': {
      'en': '',
      'hr': '',
    },
    'n28b5uzh': {
      'en': '',
      'hr': '',
    },
    'bvbz2epl': {
      'en': '',
      'hr': '',
    },
    'cib3wxik': {
      'en': '',
      'hr': '',
    },
    'nahmidpl': {
      'en': '',
      'hr': '',
    },
    '5o1gnvg2': {
      'en': '',
      'hr': '',
    },
    'fgybu5no': {
      'en': '',
      'hr': '',
    },
    'mfpc9hzd': {
      'en': '',
      'hr': '',
    },
    'purjqlvo': {
      'en': '',
      'hr': '',
    },
    '7lp3tp55': {
      'en': '',
      'hr': '',
    },
    'bpn8zu6l': {
      'en': '',
      'hr': '',
    },
    'zux8zu0z': {
      'en': '',
      'hr': '',
    },
    'sisi75z6': {
      'en': '',
      'hr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
