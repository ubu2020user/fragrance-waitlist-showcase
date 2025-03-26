import 'package:flutter/material.dart';

import '../../utils/is_mobile.dart';

class PerfumeSizeContainer extends StatelessWidget {
  const PerfumeSizeContainer({
    super.key,
    required this.height,
    required this.ml,
    this.tooltip,
  });

  final double height;
  final String? tooltip;
  final String ml;

  @override
  Widget build(BuildContext context) {
    double pcAddition = !isMobile(context) ? 60 : 0;
    return Column(
      children: [
        Tooltip(
          message: tooltip,
          child: Container(
            width: 80 + pcAddition,
            height: 116 + pcAddition,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              border: Border.all(
                color: Theme.of(context).colorScheme.surfaceContainerLowest,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  bottom: 6,
                  child: Image.asset(
                    "assets/fragrance/duelleback.png",
                    width: 50 + pcAddition,
                    height: height + pcAddition,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          "100ML",
          style: TextStyle(
            fontSize: 12.0,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
