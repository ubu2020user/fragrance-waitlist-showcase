import 'package:flutter/material.dart';
import 'package:fragrance/pages/landing/functions/change_locale.dart';
import 'package:fragrance/pages/landing/landing_page.dart';
import 'package:fragrance/pages/landing/widgets/pre_title_text.dart';

import 'package:fragrance/components/waitlist_modal/show_waitlist_modal.dart';

/// The content of the `SliverAppBar` in the `LandingPage`. <br/>
/// Used by [LandingPage]. <br/>
/// PreTitleTextWidget is shown when the `SliverAppBar` is expanded and loses opacity when the appBar / body is scrolled. <br/>
class AppBarContent extends StatelessWidget {
  const AppBarContent({super.key, required this.appBarHeight});

  final double appBarHeight;

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      collapseMode: CollapseMode.parallax,
      centerTitle: true,
      title:
          appBarHeight <= 60
              ? Container(
                color: Theme.of(context).colorScheme.surfaceContainerLowest,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    _buildActionWidget(
                      isLeft: true,
                      iconData: Icons.language,
                      onPressed: () async => await changeLocale(context),
                    ),
                    Text(
                      'Eau Duelle',
                      style: TextStyle(fontFamily: "Courgette"),
                    ),
                    _buildActionWidget(
                      isLeft: false,
                      iconData: Icons.shopping_bag_rounded,
                      onPressed: () async => await showWaitlistModal(context),
                    ),
                  ],
                ),
              )
              : Text('Eau Duelle', style: TextStyle(fontFamily: "Courgette")),
      background: PreTitleText(
        appBarHeight: appBarHeight,
        maxHeight: 200,
      ),
    );
  }
}

/// Builds an action widget for the `SliverAppBar`. <br/>
/// The action widget is an `IconButton` that calls a function when pressed. <br/>
Widget _buildActionWidget({
  required bool isLeft,
  required IconData iconData,
  required Function() onPressed,
}) => Align(
  alignment: isLeft ? Alignment.centerLeft : Alignment.centerRight,
  child: Padding(
    padding: EdgeInsets.only(left: isLeft ? 8 : 0, right: !isLeft ? 8 : 0),
    child: IconButton(onPressed: onPressed, icon: Icon(iconData)),
  ),
);
