import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:technical_test/core/logger/logger_utils.dart';
import 'package:technical_test/injector.dart';
import 'package:technical_test/presentation/app/app_themes.dart';
import 'package:technical_test/presentation/app/lang/translation_service.dart';
import 'package:technical_test/presentation/controllers/language_controller.dart';
import 'package:technical_test/presentation/routes/app_pages.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Injection
  await DependencyInjection.init();

  //ScreenUtil init
  await ScreenUtil.ensureScreenSize();

  //Firebase Config
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return GetBuilder<LanguageController>(
      builder: (languageController) {
        return ScreenUtilInit(
          minTextAdapt: true,
          builder: (context, widget) => GetMaterialApp(
            //Logging
            enableLog: true,
            logWriterCallback: LoggerUtils.write,
            title: 'app.appName'.tr,
            theme: AppThemes.themeLight,
            darkTheme: AppThemes.themeDark,
            themeMode: ThemeMode.light,
            initialRoute: Routes.main,
            getPages: AppPages.routes,
            defaultTransition: Transition.cupertino,
            //Localizations
            translations: TranslationService(),
            supportedLocales: TranslationService().supportedLocales,
            locale: languageController.getLocale,
            localizationsDelegates: const [
              GlobalWidgetsLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          ),
        );
      },
    );
  }
}
