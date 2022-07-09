import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:jegoshit/widgets/label/text_label.dart';

class BottomCustom extends StatelessWidget {
  final Function()? press;
  final String? label;
  final double? textSize;
  final double? height;
  final double? width;
  final Color? bgColor;
  final Color? textColor;

  const BottomCustom(
      {super.key,
      this.press,
      this.label,
      this.textSize,
      this.height,
      this.width,
      this.bgColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height ?? 30.h,
        width: width ?? 325,
        child: ElevatedButton(
            onPressed: press,
            style: ElevatedButton.styleFrom(
              elevation:0,
              primary: bgColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(900),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Center(
                child: TextPoppin(
                  label: label,
                  textsize: textSize,
                  textcolor: textColor,
                ),
              ),
            )));
  }
}
