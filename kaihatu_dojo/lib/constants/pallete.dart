import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

var brightness = SchedulerBinding.instance.window.platformBrightness;

class Palette {
  static Color primaryColor = brightness == Brightness.light
      ? Color.fromARGB(255, 1, 177, 4)
      : const Color.fromARGB(255, 1, 177, 4);
  static Color secondaryColor = brightness == Brightness.light
      ? const Color(0xff888888)
      : const Color(0xff888888);
  static Color backgroundColor = brightness == Brightness.light
      ? const Color(0xffeeeeee)
      : const Color(0xffeeeeee);
  static Color shadowColor = brightness == Brightness.light
      ? const Color(0xffcccccc)
      : const Color(0xffcccccc);
  static Color transparent =
      brightness == Brightness.light ? Colors.transparent : Colors.transparent;
  static Color primaryFontColor = brightness == Brightness.light
      ? const Color(0xff333333)
      : const Color(0xff333333);
}
