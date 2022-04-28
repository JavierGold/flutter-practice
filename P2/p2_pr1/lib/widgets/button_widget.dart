import 'package:flutter/material.dart';
import 'package:p2_pr1/shared/responsive.dart';
import 'package:p2_pr1/utilerias/global.dart';

class ButtonWidget extends StatelessWidget {
  final String? title;
  final bool? hasBorder;
  final void Function()? onPressed;
  final Color? color;
  final double? height;
  final double? width;
  final double? fontSize;
  final bool? otherColor;
  final Color? colorButton;

  const ButtonWidget({
    Key? key,
    this.title,
    this.hasBorder,
    this.onPressed,
    this.color,
    this.height = 60.0,
    this.width = -1.0,
    this.fontSize,
    this.otherColor = false,
    this.colorButton = Global.colorEmpresa,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fontSizeButton = 0;

    if (isTab(context) || isDesktop(context)) {
      fontSizeButton = fontSize ?? 20;
    } else if (isMobile(context)) {
      fontSizeButton = fontSize ?? 14;
    }

    return Material(
      borderRadius: BorderRadius.circular(4.0),
      child: Ink(
        decoration: BoxDecoration(
          color: hasBorder!
              ? Global.colorBlanco
              : otherColor!
                  ? colorButton
                  : Global.colorEmpresa,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(4.0),
          onTap: onPressed,
          child: SizedBox(
            height: height,
            width: width! < 0 ? MediaQuery.of(context).size.width : width!,
            child: Center(
              child: Text(
                title!,
                style: TextStyle(
                    color: hasBorder! ? Global.colorNegro : Global.colorBlanco,
                    fontWeight: FontWeight.w400,
                    fontSize: fontSizeButton),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
