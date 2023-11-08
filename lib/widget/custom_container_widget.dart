import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({
    super.key,
    required this.text,
    required this.color,
    required this.borderColor,
    required this.textColor,
  });
  final String text;
  final Color? color;
  final Color borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.04,
      width: MediaQuery.of(context).size.width * 0.27,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: color,
        border: Border.all(
          color: borderColor.withOpacity(0.4),
        ),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: textColor),
      )),
    );
  }
}
