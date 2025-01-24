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
    'n0v02cj2': {
      'en': 'Introducing the ',
      'hr': '',
    },
    '3ddnvt2z': {
      'en': '\"Aura\" ',
      'hr': '',
    },
    'hzw1x48z': {
      'en': 'Smartwatch',
      'hr': '',
    },
    'h2gohp8q': {
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
    'abg4q7xc': {
      'en': 'Learn to breath',
      'hr': '',
    },
    '9jbe6bz5': {
      'en': '4 Min',
      'hr': '',
    },
    '22bke8j5': {
      'en': 'George Switzer',
      'hr': '',
    },
    'i7802hgu': {
      'en': 'Text1',
      'hr': '',
    },
    'r7pi7f6n': {
      'en': 'Text2',
      'hr': '',
    },
    'poivprcf': {
      'en': 'Label here...',
      'hr': '',
    },
  },
  // WidgetListView
  {
    '4i2i9dk2': {
      'en': 'title',
      'hr': '',
    },
    'we95kmem': {
      'en': 'description 1',
      'hr': '',
    },
    'p2d1t81s': {
      'en': 'title 2',
      'hr': '',
    },
    'grf992pk': {
      'en': 'description 2',
      'hr': '',
    },
    'g3qpw040': {
      'en': 'title 3',
      'hr': '',
    },
    '0q2u6tqi': {
      'en': 'description 3',
      'hr': '',
    },
    's5wgrvmj': {
      'en': 'title 4',
      'hr': '',
    },
    'ik50op98': {
      'en': 'description 4',
      'hr': '',
    },
    'v0rprgoi': {
      'en': 'title 5',
      'hr': '',
    },
    'b2b3aijh': {
      'en': 'description 5',
      'hr': '',
    },
    'onsycxde': {
      'en': 'title 1 ',
      'hr': '',
    },
    'pyt9outm': {
      'en': 'description 1',
      'hr': '',
    },
    't0v5kozs': {
      'en': 'title 2',
      'hr': '',
    },
    'kxuwcsij': {
      'en': 'description 2',
      'hr': '',
    },
    'utfcgbox': {
      'en': 'title 3',
      'hr': '',
    },
    'p6ym4vn8': {
      'en': 'description 3',
      'hr': '',
    },
    '4l097q55': {
      'en': 'title 4',
      'hr': '',
    },
    '0hqiudoh': {
      'en': 'description 4',
      'hr': '',
    },
  },
  // WidgetGridView
  {
    '4pxkhhoh': {
      'en': 'Tab 1',
      'hr': '',
    },
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
    '57a6wxz2': {
      'en': 'Tab 2',
      'hr': '',
    },
    'f3sxb20e': {
      'en': 'title 1',
      'hr': '',
    },
    '8un7mt7z': {
      'en': 'title 2',
      'hr': '',
    },
    'pfmkzjey': {
      'en': 'title 3',
      'hr': '',
    },
    'oyzl9z5h': {
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
    'boeott0k': {
      'en': 'Name',
      'hr': '',
    },
    '84tm4gwq': {
      'en': 'Description',
      'hr': '',
    },
    '2hskoz8q': {
      'en':
          'Bright turquoise walls surround a bustling market, filled with exotic scents and vibrant, handwoven textiles.\nBright turquoise walls surround a bustling market, filled with exotic scents and vibrant, handwoven textiles.',
      'hr': '',
    },
    'ac71xlig': {
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
    'rqjcxxm5': {
      'en': 'Tab 1',
      'hr': '',
    },
    'ur447ue0': {
      'en': 'Content of Tab 1',
      'hr': '',
    },
    'kv3zpru7': {
      'en': 'Tab 2',
      'hr': '',
    },
    '0m6pji4i': {
      'en': 'Content of Tab 2',
      'hr': '',
    },
    'r1pw7ssj': {
      'en': 'Tab 3',
      'hr': '',
    },
    'oc90pxt9': {
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
    'cr7qxhs7': {
      'en': 'Content of PageView 1',
      'hr': '',
    },
    'wxiy9c9t': {
      'en': 'Content of PageView 2',
      'hr': '',
    },
    'e1iua974': {
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
    'i9buhpqy': {
      'en': 'A weathered map',
      'hr': '',
    },
    'w7nypflu': {
      'en': 'A weathered map, edges frayed...',
      'hr': '',
    },
    'd3198y6e': {
      'en':
          'A weathered map, edges frayed, hints at hidden paths through a forgotten forest. Sunlight filters softly. A weathered map, edges frayed, hints at hidden paths through a forgotten forest. Sunlight filters softly. \nA weathered map, edges frayed, hints at hidden paths through a forgotten forest. Sunlight filters softly.',
      'hr': '',
    },
  },
  // WidgetWrap
  {
    'otg95t91': {
      'en': 'Horizontal Wrap',
      'hr': '',
    },
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
    'mgiotat9': {
      'en': 'Vertical Wrap',
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
    '8qi6ih4z': {
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
  // WidgetImage
  {
    'idcr1qzw': {
      'en': 'Fill',
      'hr': '',
    },
    '96d15v6f': {
      'en': 'Contain',
      'hr': '',
    },
    'wjbnpo0h': {
      'en': 'Fit Width',
      'hr': '',
    },
    'dwyk1tan': {
      'en':
          'None. Center the widget and crop any part of\nit that overflows the available space.',
      'hr': '',
    },
    'm90tugyx': {
      'en': 'Different sizes',
      'hr': '',
    },
  },
  // WidgetButton
  {
    'iroovwas': {
      'en': 'Button',
      'hr': '',
    },
    'bc4v002a': {
      'en': 'Log In',
      'hr': '',
    },
    'xcj8k7yh': {
      'en': 'True',
      'hr': '',
    },
    'gutckpc7': {
      'en':
          'Buttons can be disabled based on certain conditions. A common example is on checkout pages, where the button might be disabled until the user fills out a form with their personal details. Once the form is completed, the button will be enabled automatically.',
      'hr': '',
    },
    '406hv0p3': {
      'en': 'Download',
      'hr': '',
    },
    '5m6i3itv': {
      'en':
          'Tap the button below to see a live example of enabling and disabling.',
      'hr': '',
    },
    '8z9ka7g9': {
      'en': 'Get Started',
      'hr': '',
    },
    'hhfzw4cj': {
      'en': 'Get Started',
      'hr': '',
    },
  },
  // WidgetIconButton
  {
    'qjhwco7w': {
      'en':
          'Tap the button below to see a live example of enabling and disabling.',
      'hr': '',
    },
  },
  // WidgeListTile
  {
    'awo3ywed': {
      'en': '5 Ways to Boost Your Productivity',
      'hr': '',
    },
    'cnp9f4h6': {
      'en': 'Simple Strategies for a More Focused You',
      'hr': '',
    },
    'meht6k5e': {
      'en': '5 Ways to Boost Your Productivity',
      'hr': '',
    },
    'qexqyhhu': {
      'en': 'Simple Strategies for a More Focused You',
      'hr': '',
    },
  },
  // WidgeSlideableListTile
  {
    'lasvuja4': {
      'en': 'Share',
      'hr': '',
    },
    '9j0nsklj': {
      'en': 'Rename',
      'hr': '',
    },
    'jbgt670d': {
      'en': 'Delete',
      'hr': '',
    },
    'pzaf969q': {
      'en': 'Subtitle goes here...',
      'hr': '',
    },
  },
  // WidgetCalendar
  {
    'm0zlqgqk': {
      'en': 'Month',
      'hr': '',
    },
    '3o30weqk': {
      'en': 'Week',
      'hr': '',
    },
  },
  // WidgetToggleIcon
  {
    '38t79gze': {
      'en': 'Local state',
      'hr': '',
    },
    '2h98mvwy': {
      'en': 'toggle - local state',
      'hr': '',
    },
    'n7spknyk': {
      'en': 'Toggle value:',
      'hr': '',
    },
    'bvy6gpdh': {
      'en': 'True',
      'hr': '',
    },
    'i3mw0qgu': {
      'en': 'False',
      'hr': '',
    },
  },
  // WidgetTransform
  {
    'gv1pvxlf': {
      'en': 'Translate&Skew',
      'hr': '',
    },
    'c7uzk1hn': {
      'en': 'Transform',
      'hr': '',
    },
    'bvwl7l46': {
      'en': 'Scale',
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
  // WidgetLanguageSelector
  {
    'cbtvzk0f': {
      'en': 'Hello',
      'hr': 'Zdravo',
    },
  },
  // WidgetChart
  {
    'ekt7bu7e': {
      'en': 'Line',
      'hr': '',
    },
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
    'g09sha1n': {
      'en': 'Bar',
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
    '245y8ode': {
      'en': 'Pie',
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
  // WidgetMuxBroadcast
  {
    'g4s5cbu6': {
      'en': 'Live',
      'hr': '',
    },
    's0brskn1': {
      'en': 'Live',
      'hr': '',
    },
    '3g0i821e': {
      'en': 'Start Stream',
      'hr': '',
    },
  },
  // WidgetMouseRegion
  {
    'aoq9y6oi': {
      'en': 'Tab 1',
      'hr': '',
    },
    'h64lyf98': {
      'en': 'Tab 2',
      'hr': '',
    },
    'x62h8wen': {
      'en': 'Tab 4',
      'hr': '',
    },
  },
  // WidgetBarcode
  {
    'iqybsqne': {
      'en': 'QR Code',
      'hr': '',
    },
    '5vy3z807': {
      'en': 'Aztec',
      'hr': '',
    },
    'zrrd894y': {
      'en': 'Data Matrix',
      'hr': '',
    },
    'z7n44imt': {
      'en': 'PDF 417',
      'hr': '',
    },
    'cumklydy': {
      'en': 'Code 128',
      'hr': '',
    },
    'rlhcj00r': {
      'en': 'Telepen',
      'hr': '',
    },
    'vpte67bz': {
      'en': 'Codebar',
      'hr': '',
    },
  },
  // WidgetTooltip
  {
    'hpowlwkb': {
      'en': 'To create an account, you need to press on button below. ',
      'hr': '',
    },
    '5yp258yn': {
      'en': 'Sign In',
      'hr': '',
    },
  },
  // WidgetStickyHeader
  {
    'adyl3n5b': {
      'en': 'A',
      'hr': '',
    },
  },
  // WidgetDraggable
  {
    'aotb3ec7': {
      'en': 'Example 1',
      'hr': '',
    },
    'y6vcpb42': {
      'en': 'Drop Me Here',
      'hr': '',
    },
    'hatol4ka': {
      'en': 'Drag Me',
      'hr': '',
    },
    'j1nt3i5i': {
      'en': 'Example 2',
      'hr': '',
    },
    'xrm5eq9t': {
      'en': 'What\'s the capital of Spain?',
      'hr': '',
    },
    'dx6a69tv': {
      'en': 'Example 3',
      'hr': '',
    },
  },
  // WidgetTextField
  {
    'q3h2srj9': {
      'en': 'Tab 1',
      'hr': '',
    },
    'v1y2akhg': {
      'en': 'Name',
      'hr': '',
    },
    '5sui98dg': {
      'en': 'Email',
      'hr': '',
    },
    'pm281ihz': {
      'en': 'Comments…',
      'hr': '',
    },
    '5b8mh0cs': {
      'en': 'SUBMIT',
      'hr': '',
    },
    '7vtc8vxh': {
      'en': 'Tab 2',
      'hr': '',
    },
    'jyz7irsj': {
      'en': 'Email…',
      'hr': '',
    },
    'utg2crza': {
      'en': 'Only Gmail.com',
      'hr': '',
    },
    'psre57cc': {
      'en': 'Comments…',
      'hr': '',
    },
    'shcfe0tc': {
      'en': 'Field is required',
      'hr': '',
    },
    'yqup3ijm': {
      'en': 'Invalid email',
      'hr': '',
    },
    'hep92s72': {
      'en': 'Please choose an option from the dropdown',
      'hr': '',
    },
    '9oiqgk29': {
      'en': 'Field is required',
      'hr': '',
    },
    'olyyylg5': {
      'en': 'Only Gmail emails are accepted',
      'hr': '',
    },
    '23qfigls': {
      'en': 'Please choose an option from the dropdown',
      'hr': '',
    },
    'uix1euyt': {
      'en': 'Field is required',
      'hr': '',
    },
    '2s9w8o02': {
      'en': 'Minimum 10 chars',
      'hr': '',
    },
    '3p7lja1q': {
      'en': 'Max 100 chars',
      'hr': '',
    },
    'kai3oq64': {
      'en': 'Please choose an option from the dropdown',
      'hr': '',
    },
    'kut5x72n': {
      'en': 'SUBMIT',
      'hr': '',
    },
  },
  // WidgetDropDown
  {
    'm9pteza3': {
      'en': 'Tab 1',
      'hr': '',
    },
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
    'k4fxmib7': {
      'en': 'DropDown Filter',
      'hr': '',
    },
    'ck6t9aio': {
      'en': 'Select you Vehicle:',
      'hr': '',
    },
    '7ozvxy59': {
      'en': 'Audi',
      'hr': '',
    },
    'i0fttc4l': {
      'en': 'Select Vehicle',
      'hr': '',
    },
    'ri5rqf4b': {
      'en': 'Audi',
      'hr': '',
    },
    '0m6ghdbx': {
      'en': 'Select Audi Model',
      'hr': '',
    },
    'mcn0cpvl': {
      'en': '210',
      'hr': '',
    },
    'rxehyaax': {
      'en': '220',
      'hr': '',
    },
    '3mffyqyk': {
      'en': '230',
      'hr': '',
    },
    'by3oyxoq': {
      'en': 'Apply',
      'hr': '',
    },
    'hhp5h0ke': {
      'en': 'Apply',
      'hr': '',
    },
    'ck1ndmcn': {
      'en': 'Tab 2',
      'hr': '',
    },
    'h2gtietv': {
      'en': 'Please select...',
      'hr': '',
    },
    'fxbi3f4p': {
      'en': 'Search for an item...',
      'hr': '',
    },
    'vlwni2ru': {
      'en': 'BMW',
      'hr': '',
    },
    '124xv8tr': {
      'en': 'Merc',
      'hr': '',
    },
    't6hp421e': {
      'en': 'Ferrari',
      'hr': '',
    },
    'wnbdk3qw': {
      'en': 'Lamborghini',
      'hr': '',
    },
  },
  // WidgetCheckbox
  {
    'k0ecfw1g': {
      'en': 'Hello World',
      'hr': '',
    },
    '68sxkwif': {
      'en': 'Hello World',
      'hr': '',
    },
  },
  // WidgetCheckboxListTile
  {
    'l4gei15q': {
      'en': 'Title',
      'hr': '',
    },
    'hhs5l1dv': {
      'en': 'Subtitle',
      'hr': '',
    },
    '1raxwq7n': {
      'en': 'Title',
      'hr': '',
    },
    'jk2brwr8': {
      'en': 'Subtitle',
      'hr': '',
    },
  },
  // WidgetSwitchListTile
  {
    'gv9ekzfq': {
      'en': 'Title',
      'hr': '',
    },
    'p8cvt71m': {
      'en': 'Subtitle',
      'hr': '',
    },
    'tui8jcv4': {
      'en': 'Title',
      'hr': '',
    },
    'fbpiyr16': {
      'en': 'Subtitle',
      'hr': '',
    },
  },
  // WidgetRadioButton
  {
    's5xl1twv': {
      'en': 'Option 1',
      'hr': '',
    },
    'f9ivfubh': {
      'en': 'Option 2',
      'hr': '',
    },
    '435y8wt5': {
      'en': 'Option 3',
      'hr': '',
    },
    '26t1ib1m': {
      'en': 'Option 1',
      'hr': '',
    },
    'x2lft2p0': {
      'en': 'Option 2',
      'hr': '',
    },
    '9lhhhbes': {
      'en': 'Option 3',
      'hr': '',
    },
  },
  // WidgetChoiceChips
  {
    'xjdz8fan': {
      'en': 'Option 1',
      'hr': '',
    },
    'rtt6756h': {
      'en': 'Option 2',
      'hr': '',
    },
    '65oos320': {
      'en': 'Option 3',
      'hr': '',
    },
    '789yqlik': {
      'en': 'Option 4',
      'hr': '',
    },
    'hlrgvxpd': {
      'en': 'Option 5',
      'hr': '',
    },
    'kz25xiqe': {
      'en': 'Option 2',
      'hr': '',
    },
    'klz6ixwr': {
      'en': 'Option 4',
      'hr': '',
    },
    'v1ljs6ut': {
      'en': 'Option 5',
      'hr': '',
    },
  },
  // WidgetPlacePicker
  {
    'c7ljds6w': {
      'en': 'Select Location',
      'hr': '',
    },
    '026yd11t': {
      'en': 'Choose Location',
      'hr': '',
    },
    '2piqdxl4': {
      'en': ' Loc',
      'hr': '',
    },
    'ml187elt': {
      'en': 'Location',
      'hr': '',
    },
  },
  // WidgetCheckboxGroup
  {
    'b5p3hjy1': {
      'en': 'Option 1',
      'hr': '',
    },
    'knlet9s3': {
      'en': 'Option 2',
      'hr': '',
    },
    'l2mmte57': {
      'en': 'Option 3',
      'hr': '',
    },
    'bhwh2gsd': {
      'en': 'Option 4',
      'hr': '',
    },
    '3srzi738': {
      'en': 'Option 1',
      'hr': '',
    },
    'wh7wjg22': {
      'en': 'Option 2',
      'hr': '',
    },
    'f12s48e7': {
      'en': 'Option 3',
      'hr': '',
    },
    'o40fbnym': {
      'en': 'Option 4',
      'hr': '',
    },
  },
  // WidgetGemini
  {
    't3alyza9': {
      'en': 'Enter text…',
      'hr': '',
    },
    'p4iyi5u7': {
      'en': 'GO!',
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
