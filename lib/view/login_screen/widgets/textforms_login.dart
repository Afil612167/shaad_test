import 'package:flutter/material.dart';

class TextFormLoginDetails extends StatelessWidget {
  const TextFormLoginDetails({
    Key? key,
    required this.userInformation,
    required this.width,
    required this.height,
  }) : super(key: key);
  final String userInformation;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.8,
      height: height * 0.08,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.only(left: width*0.025)),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: userInformation,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
