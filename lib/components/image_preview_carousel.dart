import 'package:flutter/material.dart';
import 'package:fragrance/pages/landing/widgets/body.dart';
import 'package:fragrance/utils/constants.dart';

/// PageViewer with left right buttons to navigate through images. <br/>
/// This widget is used by [LandingPageBody].
class ImagePreviewCarousel extends StatefulWidget {
  const ImagePreviewCarousel({super.key});

  @override
  State<ImagePreviewCarousel> createState() => _ImagePreviewCarouselState();
}

class _ImagePreviewCarouselState extends State<ImagePreviewCarousel> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.42,
          child: PageView.builder(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: frontImagesEauDuelle.length,
            itemBuilder:
                (context, index) =>
                    Image.asset(frontImagesEauDuelle[index], fit: BoxFit.fitHeight),
          ),
        ),
        Positioned(
          top: MediaQuery.sizeOf(context).height * 0.42 / 2 - 20,
          left: 8,
          right: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios, size: 16),
                onPressed: _previousImage,
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios, size: 16),
                onPressed: _nextImage,
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _nextImage() {
    if (pageController.page == frontImagesEauDuelle.length - 1) {
      pageController.jumpToPage(0);
      pageController.animateToPage(
        1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousImage() {
    if (pageController.page == 0) {
      pageController.jumpToPage(frontImagesEauDuelle.length - 1);
      pageController.animateToPage(
        frontImagesEauDuelle.length - 2,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
