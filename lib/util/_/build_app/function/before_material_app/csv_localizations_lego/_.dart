import 'package:csv_localizations/csv_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


import '../../../../../../main.dart';
import '../../../../../config/csv_localizations_lego/_.dart';
import '../../../../shared_params/_/material_app.dart';

@ReadyBeforeMaterialApp(index: 1.6)
Future<void> readyForCsvLocalizationsLego(BuildContext context) async {
  MaterialAppParams.localizationsDelegates = [
    // delegate from flutter_localization
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    // delegate from csv_localizations
    CsvLocalizationsDelegate(path: 'assets/lego/csv_localizations_lego/translations.csv'),
  ];

  MaterialAppParams.supportedLocales = supportLanguage;


}
