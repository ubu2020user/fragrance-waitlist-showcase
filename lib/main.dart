import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fragrance/i18n/strings.g.dart';
import 'package:fragrance/pages/landing/landing_page.dart';
import 'package:fragrance/utils/constants.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /* await */ LocaleSettings.useDeviceLocale();

  final firebaseOptions = FirebaseOptions(
    apiKey: const String.fromEnvironment("APIKEY"),
    authDomain: const String.fromEnvironment("AUTHDOMAIN"),
    projectId: const String.fromEnvironment("PROJECTID"),
    storageBucket: const String.fromEnvironment("STORAGEBUCKET"),
    messagingSenderId: const String.fromEnvironment("MESSAGINGSENDERID"),
    appId: const String.fromEnvironment("APPID"),
    measurementId: const String.fromEnvironment("MEASUREMENTID"),
  );

  /* await */
  Firebase.initializeApp(options: firebaseOptions);

  runApp(TranslationProvider(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fragrance',
      debugShowCheckedModeBanner: false,
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      theme: _theme(Brightness.light),
      darkTheme: _theme(Brightness.dark),
      themeMode: ThemeMode.light,
      /* Disable darkTheme */
      initialRoute: "/",
      onGenerateRoute: (settings) {
        if (settings.name != null && settings.name!.length > 1) {
          referrerRoute = settings.name;
        }

        return MaterialPageRoute(
          settings: settings,
          builder: (context) => LandingPage(),
        );
      },
    );
  }

  ThemeData _theme(Brightness brightness) => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryBlue,
      primary: primaryBlue,
      brightness: brightness,
    ),
    brightness: brightness,
    fontFamily: "Poppins",
  );
}

/// This variable is used to store the referrer route quickly. (Instagram, Facebook, etc.) <br/>
/// It could be implemented more efficiently with a state management solution. <br/>
String? referrerRoute;
