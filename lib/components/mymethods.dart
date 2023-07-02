import 'package:flutter/material.dart';

const double radius = 13;

double getResHeight(BuildContext context, double factor) {
  return MediaQuery.of(context).size.height * factor;
}

double getResWidth(BuildContext context, double factor) {
  return MediaQuery.of(context).size.width * factor;
}

LinearGradient darkGreenGradient() {
  return LinearGradient(
    colors: [Colors.lightGreen.shade400, Colors.grey.shade900],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}