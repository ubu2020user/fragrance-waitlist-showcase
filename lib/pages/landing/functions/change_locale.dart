import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';

/// Changes the language (locale) of the app. <br/>
///
/// The `context` parameter is the `BuildContext` of the widget that calls this function to estimate the position of the language selection menu. <br/>
/// The language selection menu is a `PopupMenuButton` that shows the supported languages of the app. <br/>
/// The `PopupMenuButton` is shown next to the icon button that calls this function. See [_showLocaleOptions]. <br/>
///
/// returns `true` if the language was changed, `false` otherwise.
Future<bool> changeLocale(BuildContext context) async {
  Locale? selectedLocale = await _showLocaleOptions(context);

  if (selectedLocale == null ||
      selectedLocale.languageCode ==
          TranslationProvider.of(context).locale.languageCode) {
    return false;
  }

  final locale = AppLocale.values.firstWhere(
    (element) => element.languageCode == selectedLocale.languageCode,
  );

  await LocaleSettings.setLocale(locale);
  return true;
}

/// Shows the language selection menu. <br/>
///
/// The `context` parameter is the `BuildContext` of the widget that calls this function to estimate the position of the language selection menu. <br/>
/// The offset to the evoking Widget is (L,T,R,B) = (0,50,50,100). <br/>
///
/// returns the selected `Locale` if a language was selected, `null` otherwise.
Future<Locale?> _showLocaleOptions(BuildContext context) async {
  final locales = AppLocaleUtils.supportedLocales;

  final RenderBox renderBox = context.findRenderObject() as RenderBox;
  final position = renderBox.localToGlobal(Offset.zero);

  final popupMenuPosition = RelativeRect.fromLTRB(
    position.dx,
    position.dy + 50,
    position.dx + 50,
    position.dy + 100,
  );

  final selectedLocale = await showMenu<Locale>(
    context: context,
    color: Theme.of(context).colorScheme.surface,
    position: popupMenuPosition,
    items:
        locales.map((locale) {
          return PopupMenuItem<Locale>(
            value: locale,
            child: Text(locale.languageCode.toUpperCase()),
          );
        }).toList(),
  );
  return selectedLocale;
}
