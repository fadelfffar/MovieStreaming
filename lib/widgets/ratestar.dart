import 'package:flutter/material.dart';

class RateStar extends StatelessWidget {
const RateStar({
    Key? key,
    this.totalStarCount = 5,
    required this.rateCount,
  }) : super(key: key);

  final int totalStarCount;
  final int rateCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalStarCount,
        (index) => Icon(
          Icons.star,
          color: index < rateCount ? Colors.orange : Colors.grey,
        ),
      ),
    );
  }
}
 