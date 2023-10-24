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
  String get diameter => 'Çap';

  @override
  String get round => 'Tur';

  @override
  String get meter => 'Metre';

  @override
  String get meterCalculate => 'Metre Hesaplaması';

  @override
  String get percentCalculate => 'Yüzde Hesaplaması';

  @override
  String get meterHourProduction => 'Metre Saat Üretimi';
}
