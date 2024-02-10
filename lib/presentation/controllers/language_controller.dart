import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:technical_test/core/utils/constants.dart';

class LanguageController extends GetxController {
  static LanguageController get to => Get.find<LanguageController>();
  final languageCode = "".obs;
  late SharedPreferences prefs;
  final countryCode = "".obs;

  String get currentLanguage => languageCode.value;
  String get currentCountry => countryCode.value;

  @override
  void onInit() async {
    super.onInit();
    prefs = await SharedPreferences.getInstance();
  }

  // Gets current language stored
  (RxString, RxString) get currentLanguageStore {
    languageCode.value = prefs.getString('language') ?? '';
    countryCode.value = prefs.getString('country') ?? '';
    return (languageCode, countryCode);
  }

  // gets the language locale app is set to
  Locale? get getLocale {
    var (language, country) = currentLanguageStore;
    if (language.value == '' && country.value == '') {
      languageCode.value = defaultLanguage;
      countryCode.value = defaultCountry;
      updateLanguage(defaultLanguage, defaultCountry);
    } else if (language.value != '' && country.value != '') {
      //set the stored string country code to the locale
      return Locale(language.value, country.value);
    }
    // gets the default language key for the system.
    return Get.deviceLocale;
  }

  // updates the language stored
  Future<void> updateLanguage(String locale, String country) async {
    languageCode.value = locale;
    countryCode.value = country;
    await prefs.setString('language', locale);
    await prefs.setString('country', country);
    if (getLocale != null) {
      await Get.updateLocale(getLocale!);
    }
    update();
  }
}
