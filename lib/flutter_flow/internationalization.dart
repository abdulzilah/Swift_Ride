import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

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
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

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

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

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

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // SplashScreen
  {
    've9slq1l': {
      'en': 'SwiftRid',
      'ar': 'سويفت',
    },
    'l3bru3t2': {
      'en': 'er',
      'ar': ' رايدر',
    },
    '9l0k2ols': {
      'en': 'Driving You Forward, Safely and',
      'ar': 'يقودك إلى الأمام ، بأمان و',
    },
    'up14jxud': {
      'en': 'Swiftly',
      'ar': 'بسرعة',
    },
    '8jb0si1r': {
      'en':
          'An All-in-One platform to manage your business and provide the ultimate experience for your customers',
      'ar': 'منصة الكل في واحد لإدارة أعمالك وتوفير تجربة مثالية لعملائك',
    },
    'xp5s9r61': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    'fsjzskb0': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // LogInPage
  {
    '0rs0npov': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    '8aq633sl': {
      'en': 'Email or Username',
      'ar': 'البريد الإلكتروني أو اسم المستخدم',
    },
    'rsxrma2o': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'f81mjrgt': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    '5zcji25x': {
      'en': 'by logging in you agree to our',
      'ar': 'بتسجيل الدخول فإنك توافق على',
    },
    '2984cfyx': {
      'en': 'Terms and Conditions',
      'ar': 'الأحكام والشروط',
    },
    '6vsz7p06': {
      'en': 'You don\'t have an account? ',
      'ar': 'ليس لديك حساب؟',
    },
    '1ittgmry': {
      'en': 'Contact us',
      'ar': 'اتصل بنا',
    },
    'lpewmla0': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Requests
  {
    'c56o30b1': {
      'en': 'My Requests',
      'ar': 'طلباتي',
    },
    'k6vdavfe': {
      'en': 'Ongoing',
      'ar': 'جاري التنفيذ',
    },
    'xuy653sg': {
      'en': 'Requests',
      'ar': 'الطلبات',
    },
    'bey5rrd1': {
      'en': 'Abdulelah Alsbiei',
      'ar': 'عبد الإله السبيعي',
    },
    'qxg9ital': {
      'en': '1 min ago',
      'ar': 'قبل دقيقة واحدة',
    },
    '521ida1v': {
      'en': 'Nejmeh Square',
      'ar': 'ساحة النجمة',
    },
    '5lde23ux': {
      'en': 'Abra',
      'ar': 'العبرة',
    },
    'hnz5bgb1': {
      'en': '100k',
      'ar': '100 الف',
    },
    '852yve6r': {
      'en': 'Assign',
      'ar': 'تعيين',
    },
    'gb0l4n22': {
      'en': 'Ongoing',
      'ar': 'جاري التنفيذ',
    },
    'hrndkuk5': {
      'en': 'Fathi Sulieman',
      'ar': 'فتحي سليمان',
    },
    'l7yn8d2o': {
      'en': 'Honda Civic - 248648',
      'ar': 'هوندا سيفيك - 248648',
    },
    'pa142cif': {
      'en': '4 mins ago',
      'ar': 'قبل 4 دقائق',
    },
    'uajfsxk5': {
      'en': 'Ain EL Helwe',
      'ar': 'عين الحلوة',
    },
    'a5utaxmc': {
      'en': 'Saida',
      'ar': 'صيدا',
    },
    'rfr5wp8m': {
      'en': '120k',
      'ar': '120 الف',
    },
    'o7q809h1': {
      'en': 'Show on Map',
      'ar': 'عرض على الخريطة',
    },
    'lyouin1k': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // tripDetails
  {
    'sef2jbrf': {
      'en': 'Details',
      'ar': 'تفاصيل',
    },
    '466a2km5': {
      'en': 'Fathi Sulieman',
      'ar': 'فتحي سليمان',
    },
    'u12ep9gl': {
      'en': 'Honda Civic - 231357',
      'ar': 'هوندا سيفيك - 231357',
    },
    'jxmhkshe': {
      'en': 'Trip Route',
      'ar': 'طريق الرحلة',
    },
    '22eoak32': {
      'en': 'Nejmeh Square',
      'ar': 'ساحة النجمة',
    },
    'e822pta6': {
      'en': '08:10 AM',
      'ar': '08:10 صباحًا',
    },
    '86f1wx73': {
      'en': 'Abra',
      'ar': 'العبرة',
    },
    'bplwklad': {
      'en': '08:23 AM',
      'ar': '08:23 صباحًا',
    },
    'cub7xkq1': {
      'en': 'Show On Map',
      'ar': 'عرض على الخريطة',
    },
    '94sy9ngf': {
      'en': 'Customer Details',
      'ar': 'تفاصيل العميل',
    },
    'w63eyqgd': {
      'en': 'Abdulelah Alsbiei',
      'ar': 'عبد الإله السبيعي',
    },
    'zacvj0a8': {
      'en': '5 star rated',
      'ar': 'تصنيف 5 نجوم',
    },
    '5s4hwkbl': {
      'en': '120K',
      'ar': '120 ألف',
    },
    'qj9sjdib': {
      'en': 'Print Receipt',
      'ar': 'اطبع الايصال',
    },
    'w41zbol8': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AddTrip
  {
    'f3ns646l': {
      'en': 'Trip Route',
      'ar': 'طريق الرحلة',
    },
    '6sueu65d': {
      'en': 'Map',
      'ar': 'خريطة',
    },
    'yfted1ph': {
      'en': 'Customer Location',
      'ar': 'موقع العميل',
    },
    'qdaq5wj4': {
      'en': 'Destinantion',
      'ar': 'مصير',
    },
    'mj6mlj3y': {
      'en': 'Customer',
      'ar': 'عميل',
    },
    '6hi19r6n': {
      'en': 'Customer Name',
      'ar': 'اسم الزبون',
    },
    '15nywgt2': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'nqx1i60n': {
      'en': 'Fees',
      'ar': 'مصاريف',
    },
    'i1rq7dvm': {
      'en': 'Ride Price',
      'ar': 'التعرفة',
    },
    '0a6bfpaz': {
      'en': 'Driver',
      'ar': 'سائق',
    },
    '6yba3e2t': {
      'en': 'Assign Driver',
      'ar': 'تعيين سائق',
    },
    'aevzevfe': {
      'en': 'Add Trip',
      'ar': 'أضف رحلة',
    },
    '2dgtbtgp': {
      'en': 'Add Trip',
      'ar': 'أضف رحلة',
    },
    '6uge3ktk': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // History
  {
    'pkj0sp6v': {
      'en': 'My History',
      'ar': 'رحلات مكتملة',
    },
    '4cwtubkc': {
      'en': 'Aug 15',
      'ar': '15 أغسطس',
    },
    'gl8vdmnc': {
      'en': 'Driver Name',
      'ar': 'اسم السائق',
    },
    '4v0mu97g': {
      'en': '[Plate Number',
      'ar': '[رقم لوحة',
    },
    'etzdvirb': {
      'en': 'Nejmeh Square',
      'ar': 'ساحة النجمة',
    },
    'oeq9oes3': {
      'en': '6:03 PM',
      'ar': '6:03 مساءً',
    },
    'iv3jckpy': {
      'en': 'Abra',
      'ar': 'العبرة',
    },
    'kpmbc9pu': {
      'en': '6:15 PM',
      'ar': '6:15 مساءً',
    },
    'al05b2js': {
      'en': '100k',
      'ar': '100 الف',
    },
    'ie58b08b': {
      'en': 'Driver Name',
      'ar': 'اسم السائق',
    },
    'bnzd49rb': {
      'en': '[Plate Number',
      'ar': '[رقم لوحة',
    },
    'fsme6n1c': {
      'en': 'Nejmeh Square',
      'ar': 'ساحة النجمة',
    },
    '0zejnkji': {
      'en': '6:03 PM',
      'ar': '6:03 مساءً',
    },
    '677xfpks': {
      'en': 'Abra',
      'ar': 'العبرة',
    },
    'e65g2ow0': {
      'en': '6:15 PM',
      'ar': '6:15 مساءً',
    },
    'frwyif4f': {
      'en': '100k',
      'ar': '100 الف',
    },
    '67ztrzjm': {
      'en': 'Aug 14',
      'ar': '14 أغسطس',
    },
    'byt63yyk': {
      'en': 'Aug 13',
      'ar': '13 أغسطس',
    },
    'hsjq250h': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Profile
  {
    'i44dx9g8': {
      'en': 'My Profile',
      'ar': 'ملفي',
    },
    '2ozxbjm7': {
      'en': 'SwiftRider',
      'ar': 'سويفت رايدر',
    },
    'safspkod': {
      'en': '+96170858410',
      'ar': '+96170858410',
    },
    'u9qk02sk': {
      'en': 'General',
      'ar': 'عام',
    },
    'djcb5a1i': {
      'en': 'My Drivers',
      'ar': 'السائقين',
    },
    '3cukkfg1': {
      'en': 'My Features',
      'ar': 'المزايا',
    },
    '7d3fowot': {
      'en': 'Fees ',
      'ar': 'مصاريف',
    },
    'yjni22xj': {
      'en': 'Finances',
      'ar': 'ايرادات',
    },
    'sqjoz9r4': {
      'en': 'Log Out',
      'ar': 'تسجيل خروج',
    },
    'ztyl09rg': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // MyFeatures
  {
    '47o61cef': {
      'en': 'Availabe Car Types',
      'ar': 'أنواع السيارات المتوفرة',
    },
    'nfmukccg': {
      'en': 'Sedan',
      'ar': 'سيدان',
    },
    '67sd6m4c': {
      'en': 'Van',
      'ar': 'سيارة نقل',
    },
    'ku768uid': {
      'en': 'Luxury',
      'ar': 'رفاهية',
    },
    'bwtmgbj2': {
      'en': 'General',
      'ar': 'عام',
    },
    'hm9cyp1d': {
      'en': 'Smoking',
      'ar': 'التدخين',
    },
    'fz2fow6x': {
      'en': 'Pets',
      'ar': 'حيوانات أليفة',
    },
    'pdiuq5p6': {
      'en': 'WiFi',
      'ar': 'واي فاي',
    },
    '3llwqam2': {
      'en': 'Pay with card',
      'ar': 'الدفع بالبطاقة',
    },
    'z6xd4mjb': {
      'en': 'Car Options',
      'ar': 'خيارات السيارة',
    },
    '5h3qape8': {
      'en': 'Cooling',
      'ar': 'تبريد',
    },
    'wvr8debc': {
      'en': 'Cameras',
      'ar': 'الكاميرات',
    },
    'ot1bf7gs': {
      'en': 'GPS',
      'ar': 'GPS',
    },
    'r3e0hvpr': {
      'en': 'TInted Glass',
      'ar': 'زجاج ملون',
    },
    '4pzeo1ub': {
      'en': 'AUX',
      'ar': 'AUX',
    },
    'ovvxh0ii': {
      'en': 'Heating',
      'ar': 'تدفئة',
    },
    '1dv8ix74': {
      'en': 'Heated Seats',
      'ar': 'مقاعد ساخنة',
    },
    '5eprx78h': {
      'en': 'My Features',
      'ar': 'المزايا',
    },
    's0v1s5im': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
    },
    'yn0t9r0w': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // MyDrivers
  {
    '3tsxdiz3': {
      'en': 'Search',
      'ar': 'يبحث',
    },
    '7f07nvg3': {
      'en': 'My Drivers',
      'ar': 'السائقين',
    },
    'z02rrvon': {
      'en': 'Driver Name',
      'ar': 'اسم السائق',
    },
    '6x6chdy5': {
      'en': 'M 498156',
      'ar': 'م 498156',
    },
    'b3b6apxq': {
      'en': 'Honda Civic',
      'ar': 'سيارة هوندا سيفيك',
    },
    'jm4q9qor': {
      'en': 'Modify',
      'ar': 'تعديل',
    },
    'a1v5r1yv': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Fees
  {
    '122apqjw': {
      'en': 'Fees',
      'ar': 'مصاريف',
    },
    '9wtx6cw2': {
      'en': 'Fees Type',
      'ar': 'نوع الرسوم',
    },
    'f3gfec1s': {
      'en': 'Subscription',
      'ar': 'الاشتراك',
    },
    '6709kx84': {
      'en': 'Amount Cut',
      'ar': 'المبلغ المقطوع',
    },
    'r8lmyfj1': {
      'en': 'Subscription',
      'ar': 'الاشتراك',
    },
    'vuflahak': {
      'en': 'Daily',
      'ar': 'يوميًا',
    },
    '0pykcd0h': {
      'en': 'Weekly',
      'ar': 'أسبوعي',
    },
    'teboetti': {
      'en': 'Monthly',
      'ar': 'شهريا',
    },
    'c6y5byov': {
      'en': 'Percentage',
      'ar': 'نسبة مئوية',
    },
    'ghkmw4zo': {
      'en': 'Discount',
      'ar': 'تخفيض',
    },
    '2zceu3q5': {
      'en': 'Discount Code',
      'ar': 'الرقم التسلسلي للخصم',
    },
    '13vj24o4': {
      'en': 'Generate',
      'ar': 'يولد',
    },
    'tntc4cws': {
      'en': 'Discount Percentage',
      'ar': 'نسبة الخصم',
    },
    'tje932ce': {
      'en': 'Usability Count',
      'ar': 'مرات الاستخدام',
    },
    'a1eyuhu9': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
    },
    'glm4hc6e': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Finances
  {
    'roflzlvk': {
      'en': 'Finances',
      'ar': 'ايرادات',
    },
    'r5msapm9': {
      'en': 'Daily',
      'ar': 'يوميًا',
    },
    'zl9k6pfn': {
      'en': 'Weekly',
      'ar': 'أسبوعي',
    },
    'vy2t5scg': {
      'en': 'Monthly',
      'ar': 'شهريا',
    },
    's520q0kh': {
      'en': 'Rides',
      'ar': 'رحلات',
    },
    'z8kike28': {
      'en': '32%',
      'ar': '32٪',
    },
    '6twf4v61': {
      'en': '134',
      'ar': '134',
    },
    'ig41p2by': {
      'en': 'Revenue',
      'ar': 'أيرادات',
    },
    'lbzs2bnv': {
      'en': '40%',
      'ar': '40٪',
    },
    'f19bw3pf': {
      'en': '14.3',
      'ar': '14.3',
    },
    'y6an8cv0': {
      'en': 'Million',
      'ar': 'مليون',
    },
    'w5ndkvmz': {
      'en': 'Profits',
      'ar': 'أرباح',
    },
    'x74jxv5f': {
      'en': '29%',
      'ar': '29٪',
    },
    'anwwjr77': {
      'en': '5.35',
      'ar': '5.35',
    },
    'muqmd2tk': {
      'en': 'Million',
      'ar': 'مليون',
    },
    'drfhoeg6': {
      'en': 'Data Showing From 10 / 09 Till 11 / 09',
      'ar': 'تظهر البيانات من 10/09 حتى 11/09',
    },
    'exsytb66': {
      'en': 'Print PDF',
      'ar': 'طباعة PDF',
    },
    'xlqjvpka': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Miscellaneous
  {
    'eb9sb4k2': {
      'en': '',
      'ar': '',
    },
    'jhwi3c5m': {
      'en': '',
      'ar': '',
    },
    'nfccwsbf': {
      'en': '',
      'ar': '',
    },
    'x8d7fuak': {
      'en': '',
      'ar': '',
    },
    'gxuew55o': {
      'en': '',
      'ar': '',
    },
    '25y65d4n': {
      'en': '',
      'ar': '',
    },
    'tpnti9ck': {
      'en': '',
      'ar': '',
    },
    '25gwnsq8': {
      'en': '',
      'ar': '',
    },
    'jkx8nevi': {
      'en': '',
      'ar': '',
    },
    'aqvtempd': {
      'en': '',
      'ar': '',
    },
    '6zdk77ed': {
      'en': '',
      'ar': '',
    },
    '4iz4apt7': {
      'en': '',
      'ar': '',
    },
    'ael5iouf': {
      'en': '',
      'ar': '',
    },
    't0lr95a0': {
      'en': '',
      'ar': '',
    },
    'aupgyyfh': {
      'en': '',
      'ar': '',
    },
    '7pizepjn': {
      'en': '',
      'ar': '',
    },
    'uptumcsr': {
      'en': '',
      'ar': '',
    },
    'nqfvo79q': {
      'en': '',
      'ar': '',
    },
    'psugxz68': {
      'en': '',
      'ar': '',
    },
    '7zhsd9jk': {
      'en': '',
      'ar': '',
    },
    'g8d5j1mh': {
      'en': '',
      'ar': '',
    },
    'h7f2rtti': {
      'en': '',
      'ar': '',
    },
    '35zccq8c': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
