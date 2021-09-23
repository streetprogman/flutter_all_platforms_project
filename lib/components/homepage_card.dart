import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/constants/textstyles.dart';

class HomepageCard extends StatelessWidget {
  final String title;
  final double? center;
  final String info;
  const HomepageCard({required this.title, this.center, required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: Colors.black.withOpacity(0.3)),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            title,
            style: Styles.cardTitle,
          ),
          center != null
              ? Text(
                  "${center!.isNegative ? "" : "+"} $center %",
                  style: center! > 0 ? Styles.centerInfoStylePositive : Styles.centerInfoStyleNegative,
                )
              : Container(),
          Text(
            info,
            style: Styles.cardInfo,
          ),
        ]),
      ),
    );
  }
}
