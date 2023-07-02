import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  String toCompareString() {
    return this.toString().split('(')[1].split(')')[0];
  }
}
