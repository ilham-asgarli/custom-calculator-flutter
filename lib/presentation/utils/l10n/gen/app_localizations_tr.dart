import 'app_localizations.dart';

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get notFoundNavigation => '403';

  @override
  String get noInternet => 'İnternet bağlantınız yok.';

  @override
  String get calculate => 'Hesapla';

  @override
  String get diameter => 'Çap Bulma';

  @override
  String get round => 'Tur Bulma';

  @override
  String get meter => 'Metre Bulma';

  @override
  String get meterCalculate => 'Çöz. Metre Hesaplama';

  @override
  String get percentCalculate => 'Rack Yüzde Bulma';

  @override
  String get meterHourProduction => 'Saat Başına Üretim';

  @override
  String get bobbin => 'Çöz. Bobin Hesaplama';
}
