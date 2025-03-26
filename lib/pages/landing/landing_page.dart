import 'package:flutter/material.dart';
import 'package:fragrance/pages/landing/widgets/app_bar_content.dart';
import 'package:fragrance/pages/landing/widgets/body.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 200.0,
                collapsedHeight: 56.0,
                surfaceTintColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                floating: false,
                pinned: true,
                flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return AppBarContent(
                      appBarHeight: constraints.biggest.height,
                    );
                  },
                ),
              ),
            ],
        body: LandingPageBody(),
      ),
    );
  }
}
