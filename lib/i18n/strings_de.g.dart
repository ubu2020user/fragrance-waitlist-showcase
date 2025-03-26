///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsDe extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	// Translations
	@override String get composedForElegance => 'Geschaffen für Eleganz';
	@override String get Ingredients => 'Zutaten';
	@override List<String> get Vanilla => [
		'Vanille',
		'Vanille ist bekannt für ihren süßen und beruhigenden Duft.',
	];
	@override List<String> get PinkPeppercorn => [
		'Rosa Pfefferkörner',
		'Rosa Pfeffer ist bekannt für seinen würzigen und warmen Duft.',
	];
	@override List<String> get Amber => [
		'Bernstein',
		'Bernstein ist bekannt für seinen warmen und moschusartigen Duft.',
	];
	@override List<String> get Calamus => [
		'Kalmus',
		'Kalmus ist bekannt für seinen süßen und würzigen Duft.',
	];
	@override List<String> get Cypriol => [
		'Zypergras',
		'Zypergras ist bekannt für seinen erdigen und holzigen Duft.',
	];
	@override late final _TranslationsHeaderTextDe headerText = _TranslationsHeaderTextDe._(_root);
	@override String get and => 'und';
	@override String get notifyMe => 'Benachrichtige mich';
	@override String get sizes => 'Größen';
	@override late final _TranslationsDescriptionTextDe descriptionText = _TranslationsDescriptionTextDe._(_root);
	@override late final _TranslationsNotifyMeTextDe notifyMeText = _TranslationsNotifyMeTextDe._(_root);
	@override late final _TranslationsNameDe name = _TranslationsNameDe._(_root);
	@override late final _TranslationsEmailDe email = _TranslationsEmailDe._(_root);
	@override late final _TranslationsBenefitsDe benefits = _TranslationsBenefitsDe._(_root);
	@override late final _TranslationsNoticeDe notice = _TranslationsNoticeDe._(_root);
}

// Path: headerText
class _TranslationsHeaderTextDe extends TranslationsHeaderTextEn {
	_TranslationsHeaderTextDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get isAllAbout => 'steht für';
	@override String get simplicity => 'Nachhaltigkeit';
	@override String get quality => 'Qualität';
	@override String get elegance => 'Eleganz';
	@override String get sustainability => 'Nachhaltigkeit';
}

// Path: descriptionText
class _TranslationsDescriptionTextDe extends TranslationsDescriptionTextEn {
	_TranslationsDescriptionTextDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get isA => 'ist ein';
	@override String get fragranceThat => 'Duft, komponiert aus den';
	@override String get finestIngredients => 'besten Ingredienzien';
	@override String get eachIngredient => 'Jede Zutat wird sorgfältig ausgewählt, um einen';
	@override String get readBelow => 'Duft zu formen. Lesen Sie mehr über die Zutaten.';
	@override String get elegant => 'eleganten';
	@override String get unique => 'einzigartigen';
}

// Path: notifyMeText
class _TranslationsNotifyMeTextDe extends TranslationsNotifyMeTextEn {
	_TranslationsNotifyMeTextDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get beNotified => 'Benachrichtigt werden, wenn';
	@override String get sellsFirstBottle => 'die erste Flasche verkauft.';
	@override String get youWillBeNotified => 'Sie werden bald benachrichtigt.';
	@override String get personalComment => 'Persönlicher Kommentar';
}

// Path: name
class _TranslationsNameDe extends TranslationsNameEn {
	_TranslationsNameDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get firstName => 'Vorname';
	@override String get lastName => 'Nachname';
}

// Path: email
class _TranslationsEmailDe extends TranslationsEmailEn {
	_TranslationsEmailDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get emailAddress => 'E-Mail-Adresse';
	@override String get isRequired => 'E-Mail-Adresse ist erforderlich';
	@override String get invalid => 'Ungültige E-Mail-Adresse';
}

// Path: benefits
class _TranslationsBenefitsDe extends TranslationsBenefitsEn {
	_TranslationsBenefitsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get Benefits => 'Vorteile';
	@override List<String> get paris => [
		'Hergestellt in Paris',
		'Das Produkt wird in Paris von Diptyque hergestellt.',
	];
	@override List<String> get soldInGermany => [
		'Verkauft in Deutschland',
		'In Deutschland erhältlich.',
	];
	@override List<String> get transparency => [
		'Transparenz',
		'Volle Transparenz über Partner und Herkunft der Rohstoffe.',
	];
	@override List<String> get testBeforeBuy => [
		'Testen vor dem Kauf',
		'Eine kostenlose Probe bei jeder Bestellung, um das Hauptparfüm vor dem Auspacken zu testen.',
	];
	@override List<String> get twoFreeSamples => [
		'Zwei kostenlose Proben',
		'Zwei kostenlose Diptyque-Proben bei allen Bestellungen.',
	];
	@override String get visitDiptyque => 'Besuchen Sie Diptyque, um mehr zu erfahren.';
	@override String get visit => 'Zur Seite';
}

// Path: notice
class _TranslationsNoticeDe extends TranslationsNoticeEn {
	_TranslationsNoticeDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wichtiger Hinweis';
	@override String get description => 'Dies ist eine nicht-kommerzielle Website, die darauf abzielt, Interesse an diesem Parfüm zu wecken. Bitte beachten Sie, dass sie in keiner Weise mit Diptyque in Verbindung steht, sondern von Fans der Marke erstellt wurde.';
	@override String get visitDiptyque => 'Erfahren Sie mehr bei Diptyque.';
	@override String get visit => 'Zur Seite';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'composedForElegance': return 'Geschaffen für Eleganz';
			case 'Ingredients': return 'Zutaten';
			case 'Vanilla.0': return 'Vanille';
			case 'Vanilla.1': return 'Vanille ist bekannt für ihren süßen und beruhigenden Duft.';
			case 'PinkPeppercorn.0': return 'Rosa Pfefferkörner';
			case 'PinkPeppercorn.1': return 'Rosa Pfeffer ist bekannt für seinen würzigen und warmen Duft.';
			case 'Amber.0': return 'Bernstein';
			case 'Amber.1': return 'Bernstein ist bekannt für seinen warmen und moschusartigen Duft.';
			case 'Calamus.0': return 'Kalmus';
			case 'Calamus.1': return 'Kalmus ist bekannt für seinen süßen und würzigen Duft.';
			case 'Cypriol.0': return 'Zypergras';
			case 'Cypriol.1': return 'Zypergras ist bekannt für seinen erdigen und holzigen Duft.';
			case 'headerText.isAllAbout': return 'steht für';
			case 'headerText.simplicity': return 'Nachhaltigkeit';
			case 'headerText.quality': return 'Qualität';
			case 'headerText.elegance': return 'Eleganz';
			case 'headerText.sustainability': return 'Nachhaltigkeit';
			case 'and': return 'und';
			case 'notifyMe': return 'Benachrichtige mich';
			case 'sizes': return 'Größen';
			case 'descriptionText.isA': return 'ist ein';
			case 'descriptionText.fragranceThat': return 'Duft, komponiert aus den';
			case 'descriptionText.finestIngredients': return 'besten Ingredienzien';
			case 'descriptionText.eachIngredient': return 'Jede Zutat wird sorgfältig ausgewählt, um einen';
			case 'descriptionText.readBelow': return 'Duft zu formen. Lesen Sie mehr über die Zutaten.';
			case 'descriptionText.elegant': return 'eleganten';
			case 'descriptionText.unique': return 'einzigartigen';
			case 'notifyMeText.beNotified': return 'Benachrichtigt werden, wenn';
			case 'notifyMeText.sellsFirstBottle': return 'die erste Flasche verkauft.';
			case 'notifyMeText.youWillBeNotified': return 'Sie werden bald benachrichtigt.';
			case 'notifyMeText.personalComment': return 'Persönlicher Kommentar';
			case 'name.firstName': return 'Vorname';
			case 'name.lastName': return 'Nachname';
			case 'email.emailAddress': return 'E-Mail-Adresse';
			case 'email.isRequired': return 'E-Mail-Adresse ist erforderlich';
			case 'email.invalid': return 'Ungültige E-Mail-Adresse';
			case 'benefits.Benefits': return 'Vorteile';
			case 'benefits.paris.0': return 'Hergestellt in Paris';
			case 'benefits.paris.1': return 'Das Produkt wird in Paris von Diptyque hergestellt.';
			case 'benefits.soldInGermany.0': return 'Verkauft in Deutschland';
			case 'benefits.soldInGermany.1': return 'In Deutschland erhältlich.';
			case 'benefits.transparency.0': return 'Transparenz';
			case 'benefits.transparency.1': return 'Volle Transparenz über Partner und Herkunft der Rohstoffe.';
			case 'benefits.testBeforeBuy.0': return 'Testen vor dem Kauf';
			case 'benefits.testBeforeBuy.1': return 'Eine kostenlose Probe bei jeder Bestellung, um das Hauptparfüm vor dem Auspacken zu testen.';
			case 'benefits.twoFreeSamples.0': return 'Zwei kostenlose Proben';
			case 'benefits.twoFreeSamples.1': return 'Zwei kostenlose Diptyque-Proben bei allen Bestellungen.';
			case 'benefits.visitDiptyque': return 'Besuchen Sie Diptyque, um mehr zu erfahren.';
			case 'benefits.visit': return 'Zur Seite';
			case 'notice.title': return 'Wichtiger Hinweis';
			case 'notice.description': return 'Dies ist eine nicht-kommerzielle Website, die darauf abzielt, Interesse an diesem Parfüm zu wecken. Bitte beachten Sie, dass sie in keiner Weise mit Diptyque in Verbindung steht, sondern von Fans der Marke erstellt wurde.';
			case 'notice.visitDiptyque': return 'Erfahren Sie mehr bei Diptyque.';
			case 'notice.visit': return 'Zur Seite';
			default: return null;
		}
	}
}

