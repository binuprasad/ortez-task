import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ReadMoreTextWidget extends StatelessWidget {
  const ReadMoreTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ReadMoreText(
      'AT ther is som the quality of its services and to  ther is som the quality of its services and to analyze traffic tomyu isosl iisjfkckhk thjdfje ;pren o[soim dp;pr sot amet cpmsectoire cp;it[ar]]]',
      style: TextStyle(color: Colors.black54),
      trimLines: 2,
      textAlign: TextAlign.justify,
      trimMode: TrimMode.Line,
      trimCollapsedText: '..More',
      trimExpandedText: ' ..less',
      lessStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold),
      moreStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold),
    );
  }
}