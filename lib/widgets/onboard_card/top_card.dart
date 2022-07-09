import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:jegoshit/constant/colors.dart';
import 'package:jegoshit/widgets/buttons/button_custom.dart';
import 'package:jegoshit/widgets/label/text_label.dart';

class TopcardOnboard extends StatelessWidget implements PreferredSize {
  final bool? isLastpage;
  final Function()? skip;
  final Function()? getStarted;

  const TopcardOnboard(
      {super.key, this.isLastpage, this.skip, this.getStarted});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: 375,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            isLastpage == true
                ? BottomCustom(
                    press: getStarted,
                    label: "Get Started",
                    textSize: 12.dp,
                    
                    textColor: colorWhite,
                    bgColor: colorOranage,
                    height: 4.5.h,
                    width: 120,
                  )
                : GestureDetector(
                    onTap: skip,
                    behavior: HitTestBehavior.deferToChild,
                    child: TextPoppin(
                      label: "Skip",
                      medium: true,
                      textsize: 12.dp,
                      textcolor: colorDark,
                      lines: 1,
                    ),
                  ),
          ],
        ),
      ),
    ));
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(45.h);
}
