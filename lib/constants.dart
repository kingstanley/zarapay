import 'package:flutter/material.dart';

getWidth(BuildContext context) {
  return MediaQuery.sizeOf(context).width;
}

isMobile(BuildContext context) => getWidth(context) < 600;
