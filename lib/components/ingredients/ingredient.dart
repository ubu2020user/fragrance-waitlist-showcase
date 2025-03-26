import 'package:flutter/material.dart';
import 'package:fragrance/utils/is_mobile.dart';

import '../../utils/constants.dart';

class Ingredient extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final bool isImageLeft;
  final double height;
  final Key? key;

  const Ingredient({
    required this.imagePath,
    required this.title,
    required this.description,
    this.isImageLeft = true,
    this.height = 150,
    this.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (!isImageLeft && !isMobile(context)) Expanded(child: SizedBox()),
        if (!isImageLeft)
          Expanded(
            flex: isMobile(context) ? 2 : 0,
            child: Align(
              alignment: Alignment.center,
              child: _TextBlockWidget(
                title: title,
                description: description,
                isLeftAligned: isImageLeft,
              ),
            ),
          ),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              constraints: BoxConstraints(maxHeight: height),
              child: ColorFiltered(
                colorFilter: grayScaleMatrix,
                child: Image.asset(imagePath),
              ),
            ),
          ),
        ),
        if (isImageLeft)
          Expanded(
            flex: isMobile(context) ? 2 : 0,
            child: Align(
              alignment: Alignment.center,
              child: _TextBlockWidget(
                title: title,
                description: description,
                isLeftAligned: isImageLeft,
              ),
            ),
          ),
        if (isImageLeft && !isMobile(context)) Expanded(child: SizedBox()),
      ],
    );
  }
}

class _TextBlockWidget extends StatelessWidget {
  const _TextBlockWidget({
    super.key,
    required this.title,
    required this.description,
    required this.isLeftAligned,
  });

  final String title;
  final String description;
  final bool isLeftAligned;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isLeftAligned ? CrossAxisAlignment.center : CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
