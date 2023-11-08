import 'package:flutter/material.dart';

class StepperContainerWidget extends StatelessWidget {
  const StepperContainerWidget({
    super.key,
    this.contentTitle,
    required this.content,
    required this.buttonText,
    required this.ontap,
  });
  final String? contentTitle;
  final String content;
  final String buttonText;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contentTitle ?? '',
              style: const TextStyle(color: Colors.black54),
            ),
            Text(
              content,
              style: const TextStyle(color: Colors.black38),
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                TextButton(
                    onPressed: ontap,
                    child: Text(
                      buttonText,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
