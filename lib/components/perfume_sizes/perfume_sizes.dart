import 'package:flutter/material.dart';
import 'package:fragrance/components/perfume_sizes/perfume_size_container.dart';

import '../../utils/is_mobile.dart';

class PerfumeSizes extends StatefulWidget {
  const PerfumeSizes({super.key});

  @override
  State<PerfumeSizes> createState() => _PerfumeSizesState();
}

class _PerfumeSizesState extends State<PerfumeSizes> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: isMobile(context) ? 8 : 16,
        children: [
          PerfumeSizeContainer(height: 70, tooltip: "140€", ml: "50ML"),
          PerfumeSizeContainer(height: 85, tooltip: "245€", ml: "75ML"),
          PerfumeSizeContainer(height: 100, tooltip: "190€", ml: "100ML"),
        ],
      ),
    );
  }
}
