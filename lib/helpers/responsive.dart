import 'package:flutter/material.dart';

bool isMobile(BuildContext context) => MediaQuery.sizeOf(context).width < 650;
bool isTab(BuildContext context) =>
    MediaQuery.sizeOf(context).width < 1300 &&
    MediaQuery.sizeOf(context).width >= 650;
bool isDesktop(BuildContext context) =>
    MediaQuery.sizeOf(context).width >= 1300;
