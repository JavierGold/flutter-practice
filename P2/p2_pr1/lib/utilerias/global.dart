import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class Global {
  static const Color colorBlanco = const Color(0xffffffff);
  static const Color colorAzul = const Color(0xff4A64FE);
  static const Color colorEmpresa = const Color(0xff6498d1);
  static const Color colorNegro = const Color(0xff000000);

  static void mensaje(BuildContext context, String mensaje, String titulo) {
    Flushbar(
      title: titulo,
      message: mensaje,
      duration: Duration(seconds: 3),
      isDismissible: false,
    ).show(context);
  }
}
