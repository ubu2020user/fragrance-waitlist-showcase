import 'package:flutter/material.dart';

import '../i18n/strings.g.dart';

class HeadlineText extends StatelessWidget {
  const HeadlineText({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback:
          (bounds) => LinearGradient(
        colors: [Colors.blue, Colors.purpleAccent, Colors.orange],
        tileMode: TileMode.clamp,
      ).createShader(bounds),
      child: Text(
        t.composedForElegance,
        style: TextStyle(
          fontSize: 24.0,
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
          color:
          Colors.white, // This color will be masked by the gradient
        ),
      ),
    );
  }
}
