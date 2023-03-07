import 'package:flutter/material.dart';

// ignore: camel_case_types
class custombuttom extends StatelessWidget {
  const custombuttom({
    super.key,
    required this.buttombackground,
    required this.textcolor,
    required this.borderRadius,
    required this.text,
   required this.order,
  });
  final Color buttombackground;
  final Color textcolor;
  final BorderRadiusGeometry borderRadius;
  final String text;
  final void Function() order;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ElevatedButton(
        onPressed: order,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttombackground,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: Text(
          text,
          style: TextStyle(color: textcolor, fontSize: 18),
        ),
      ),
    );
  }
}
