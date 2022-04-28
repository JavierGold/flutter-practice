import 'package:flutter/material.dart';
import 'package:p2_pr1/shared/responsive.dart';
import 'package:p2_pr1/utilerias/global.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIconData;
  final IconData? suffixIconData;
  final void Function(String)? onChanged;
  final bool? obscureText;
  final bool? isSuffixIcon;
  final bool? isPrefixIcon;
  final void Function()? onTap;
  final bool? readOnly;
  final bool? otherColor;
  final Color? color;
  final int? maxlong;
  final void Function()? onsuffixIconTap;
  final bool? isMaxlong;
  final bool? isfilled;
  final TextEditingController? controller;
  final bool? isMyController;
  final bool? isMyControllerActivate;

  const TextFieldWidget(
      {Key? key,
      this.hintText,
      this.prefixIconData,
      this.suffixIconData,
      this.onChanged,
      this.obscureText = false,
      this.isSuffixIcon = false,
      this.isPrefixIcon = false,
      this.onTap,
      this.readOnly = false,
      this.otherColor = false,
      this.color,
      this.maxlong,
      this.onsuffixIconTap,
      this.isMaxlong = false,
      this.isfilled = false,
      this.controller,
      this.isMyController = false,
      this.isMyControllerActivate = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
