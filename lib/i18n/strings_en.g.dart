///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get Ingredients => 'Ingredients';
	List<String> get Vanilla => [
		'Vanilla',
		'Vanilla is known for its sweet and comforting scent.',
	];
	List<String> get PinkPeppercorn => [
		'Pink Peppercorn',
		'Pink Pepper is known for its spicy and warm scent.',
	];
	List<String> get Amber => [
		'Amber',
		'Amber is known for its warm and musky scent.',
	];
	List<String> get Calamus => [
		'Calamus',
		'Calamus is known for its sweet and spicy scent.',
	];
	List<String> get Cypriol => [
		'Cypriol',
		'Cypriol is known for its earthy and woody scent.',
	];
	late final TranslationsHeaderTextEn headerText = TranslationsHeaderTextEn.internal(_root);
	String get and => 'and';
	String get composedForElegance => 'Composed for Elegance';
	String get notifyMe => 'Notify Me';
	String get sizes => 'Sizes';
	late final TranslationsDescriptionTextEn descriptionText = TranslationsDescriptionTextEn.internal(_root);
	late final TranslationsNotifyMeTextEn notifyMeText = TranslationsNotifyMeTextEn.internal(_root);
	late final TranslationsNameEn name = TranslationsNameEn.internal(_root);
	late final TranslationsEmailEn email = TranslationsEmailEn.internal(_root);
	late final TranslationsBenefitsEn benefits = TranslationsBenefitsEn.internal(_root);
	late final TranslationsNoticeEn notice = TranslationsNoticeEn.internal(_root);
}

// Path: headerText
class TranslationsHeaderTextEn {
	TranslationsHeaderTextEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get isAllAbout => 'is all about';
	String get simplicity => 'simplicity';
	String get quality => 'quality';
	String get elegance => 'elegance';
	String get sustainability => 'sustainability';
}

// Path: descriptionText
class TranslationsDescriptionTextEn {
	TranslationsDescriptionTextEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get isA => 'is a';
	String get fragranceThat => 'fragrance that is composed of the';
	String get finestIngredients => 'finest ingredients';
	String get eachIngredient => 'Each ingredient is carefully selected to create a';
	String get readBelow => 'scent. Read about the ingredients below.';
	String get elegant => 'elegant';
	String get unique => 'unique';
}

// Path: notifyMeText
class TranslationsNotifyMeTextEn {
	TranslationsNotifyMeTextEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get beNotified => 'Be notified when';
	String get sellsFirstBottle => 'sells its first bottle.';
	String get youWillBeNotified => 'You will be notified soon.';
	String get personalComment => 'Personal Comment';
}

// Path: name
class TranslationsNameEn {
	TranslationsNameEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get firstName => 'First Name';
	String get lastName => 'Last Name';
}

// Path: email
class TranslationsEmailEn {
	TranslationsEmailEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get emailAddress => 'Email Address';
	String get isRequired => 'Email Address is required';
	String get invalid => 'Invalid email address';
}

// Path: benefits
class TranslationsBenefitsEn {
	TranslationsBenefitsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get Benefits => 'Benefits';
	List<String> get paris => [
		'Made in Paris',
		'This product is crafted in Paris by Diptyque.',
	];
	List<String> get soldInGermany => [
		'Sold in Germany',
		'Available for purchase in Germany.',
	];
	List<String> get transparency => [
		'Transparency',
		'Full transparency about partners and origins of raw materials.',
	];
	List<String> get testBeforeBuy => [
		'Test before Buy',
		'A free sample with every order to try before unpacking the main perfume.',
	];
	List<String> get twoFreeSamples => [
		'Two Free Samples',
		'Two free Diptyque samples with all orders.',
	];
	String get visitDiptyque => 'Visit Diptyque to learn more.';
	String get visit => 'Visit';
}

// Path: notice
class TranslationsNoticeEn {
	TranslationsNoticeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Important Notice';
	String get description => 'This is a non-commercial website aimed at gathering interest in this perfume. Please note, it is not affiliated with Diptyque in any way, but created by fans of the brand.';
	String get visitDiptyque => 'Visit Diptyque to learn more about the brand and its products.';
	String get visit => 'Visit';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'Ingredients': return 'Ingredients';
			case 'Vanilla.0': return 'Vanilla';
			case 'Vanilla.1': return 'Vanilla is known for its sweet and comforting scent.';
			case 'PinkPeppercorn.0': return 'Pink Peppercorn';
			case 'PinkPeppercorn.1': return 'Pink Pepper is known for its spicy and warm scent.';
			case 'Amber.0': return 'Amber';
			case 'Amber.1': return 'Amber is known for its warm and musky scent.';
			case 'Calamus.0': return 'Calamus';
			case 'Calamus.1': return 'Calamus is known for its sweet and spicy scent.';
			case 'Cypriol.0': return 'Cypriol';
			case 'Cypriol.1': return 'Cypriol is known for its earthy and woody scent.';
			case 'headerText.isAllAbout': return 'is all about';
			case 'headerText.simplicity': return 'simplicity';
			case 'headerText.quality': return 'quality';
			case 'headerText.elegance': return 'elegance';
			case 'headerText.sustainability': return 'sustainability';
			case 'and': return 'and';
			case 'composedForElegance': return 'Composed for Elegance';
			case 'notifyMe': return 'Notify Me';
			case 'sizes': return 'Sizes';
			case 'descriptionText.isA': return 'is a';
			case 'descriptionText.fragranceThat': return 'fragrance that is composed of the';
			case 'descriptionText.finestIngredients': return 'finest ingredients';
			case 'descriptionText.eachIngredient': return 'Each ingredient is carefully selected to create a';
			case 'descriptionText.readBelow': return 'scent. Read about the ingredients below.';
			case 'descriptionText.elegant': return 'elegant';
			case 'descriptionText.unique': return 'unique';
			case 'notifyMeText.beNotified': return 'Be notified when';
			case 'notifyMeText.sellsFirstBottle': return 'sells its first bottle.';
			case 'notifyMeText.youWillBeNotified': return 'You will be notified soon.';
			case 'notifyMeText.personalComment': return 'Personal Comment';
			case 'name.firstName': return 'First Name';
			case 'name.lastName': return 'Last Name';
			case 'email.emailAddress': return 'Email Address';
			case 'email.isRequired': return 'Email Address is required';
			case 'email.invalid': return 'Invalid email address';
			case 'benefits.Benefits': return 'Benefits';
			case 'benefits.paris.0': return 'Made in Paris';
			case 'benefits.paris.1': return 'This product is crafted in Paris by Diptyque.';
			case 'benefits.soldInGermany.0': return 'Sold in Germany';
			case 'benefits.soldInGermany.1': return 'Available for purchase in Germany.';
			case 'benefits.transparency.0': return 'Transparency';
			case 'benefits.transparency.1': return 'Full transparency about partners and origins of raw materials.';
			case 'benefits.testBeforeBuy.0': return 'Test before Buy';
			case 'benefits.testBeforeBuy.1': return 'A free sample with every order to try before unpacking the main perfume.';
			case 'benefits.twoFreeSamples.0': return 'Two Free Samples';
			case 'benefits.twoFreeSamples.1': return 'Two free Diptyque samples with all orders.';
			case 'benefits.visitDiptyque': return 'Visit Diptyque to learn more.';
			case 'benefits.visit': return 'Visit';
			case 'notice.title': return 'Important Notice';
			case 'notice.description': return 'This is a non-commercial website aimed at gathering interest in this perfume. Please note, it is not affiliated with Diptyque in any way, but created by fans of the brand.';
			case 'notice.visitDiptyque': return 'Visit Diptyque to learn more about the brand and its products.';
			case 'notice.visit': return 'Visit';
			default: return null;
		}
	}
}

