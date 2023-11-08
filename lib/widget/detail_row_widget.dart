
import 'package:flutter/material.dart';

class DetailRowWidget extends StatelessWidget {
  const DetailRowWidget({
    super.key,
    required this.icon,
    required this.hintText,
    required this.detailText,
  });
  final IconData icon;
  final String hintText;
  final String detailText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          ),
          Text('$hintText : ',
              style: const TextStyle(
                  color: Colors.black87, fontWeight: FontWeight.w500)),
          Text(detailText,
              maxLines: 2, style: const TextStyle(color: Colors.black54))
        ],
      ),
    );
  }
}

