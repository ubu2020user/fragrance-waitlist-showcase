import 'package:flutter/material.dart';
import 'package:fragrance/components/benefits/benefits.dart';

/// Displays a benefit as Card. Used by [Benefits].
class BenefitCard extends StatelessWidget {
  const BenefitCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    this.onTap,
  });

  final String title, description;
  final Icon icon;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: onTap == null ? 0 : 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(color: Color.fromARGB(255, 225, 211, 166), width: 1.0),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  // color: Color.fromARGB(255, 225, 211, 166)
                ),
              ),
              SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(fontSize: 14.0, fontFamily: "Poppins"),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
