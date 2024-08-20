import 'package:flutter/material.dart';

// This Class is constructed for Bold Text Initially
class BoldText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final double size;
  final TextOverflow? textOverflow;
  final double? letterSpacinng;

  const BoldText({
    super.key,
    required this.text,
    this.color,
    this.fontWeight = FontWeight.bold, // Default to bold
    this.size = 20,
    this.textAlign,
    this.textOverflow = TextOverflow.ellipsis,
    this.letterSpacinng,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      textAlign: textAlign,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: size,
        color: color,
        letterSpacing: letterSpacinng,
      ),
      
    );
  }
}
