import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const iBlue = Color(0xFF3797EF);
const iGray = Color(0xFF2D2C2C);
const iWhite = Color(0xFFF2F2F2);
const iWhiteBackGround = Colors.white;
const iBlack = Color(0xFF000000);
const iGrayBackGround = Color(0xFFE4E0E0);
const iPink = LinearGradient(
  colors: [Color(0xFFE10038), Color(0xFFC90083)],
);
const iRed = Color(0xFFED4956);
const iGradiant = LinearGradient(
  colors: [Color(0xFFFBAA47), Color(0xFFD91A46), Color(0xFFA60F93)],
);
const double iconSize = 30;
const iconColor = Color(0xFF2D2C2C);

extension SizeBoxExtension on double {
  SizedBox height() {
    return SizedBox(height: this);
  }

  SizedBox width() {
    return SizedBox(width: this);
  }

  EdgeInsets paddingAll() {
    return EdgeInsets.all(this);
  }
}

double h1 = 18;
double h2 = 16;
double h3 = 14;

FontWeight bold = FontWeight.bold;
FontWeight regular = FontWeight.w500;

class FontStyles {
  static TextStyle h1BlackBold = TextStyle(
    fontSize: h1,
    color: iBlack,
    fontWeight: bold,
  );
  static TextStyle h1BlackRegular = TextStyle(
    fontSize: h1,
    color: iBlack,
    fontWeight: regular,
  );
  static TextStyle h2BlackBold = TextStyle(
    fontSize: h2,
    color: iBlack,
    fontWeight: bold,
  );
  static TextStyle h2BlackRegular = TextStyle(
    fontSize: h2,
    color: iBlack,
    fontWeight: regular,
  );
  static TextStyle h3BlackBold = TextStyle(
    fontSize: h3,
    color: iBlack,
    fontWeight: bold,
  );
  static TextStyle h3BlackRegular = TextStyle(
    fontSize: h3,
    color: iBlack,
    fontWeight: regular,
  );
  static TextStyle h1BlueBold = TextStyle(
    fontSize: h1,
    color: iBlue,
    fontWeight: bold,
  );
  static TextStyle h1BlueRegular = TextStyle(
    fontSize: h1,
    color: iBlue,
    fontWeight: regular,
  );
  static TextStyle h2BlueBold = TextStyle(
    fontSize: h2,
    color: iBlue,
    fontWeight: bold,
  );
  static TextStyle h2BlueRegular = TextStyle(
    fontSize: h2,
    color: iBlue,
    fontWeight: regular,
  );
  static TextStyle h3BlueBold = TextStyle(
    fontSize: h3,
    color: iBlue,
    fontWeight: bold,
  );
  static TextStyle h3BlueRegular = TextStyle(
    fontSize: h3,
    color: iBlue,
    fontWeight: regular,
  );
  static TextStyle h1GrayBold = TextStyle(
    fontSize: h1,
    color: iGray,
    fontWeight: bold,
  );
  static TextStyle h1GrayRegular = TextStyle(
    fontSize: h1,
    color: iGray,
    fontWeight: regular,
  );
  static TextStyle h2GrayBold = TextStyle(
    fontSize: h2,
    color: iGray,
    fontWeight: bold,
  );
  static TextStyle h2GrayRegular = TextStyle(
    fontSize: h2,
    color: iGray,
    fontWeight: regular,
  );
  static TextStyle h3GrayBold = TextStyle(
    fontSize: h3,
    color: iGray,
    fontWeight: bold,
  );
  static TextStyle h3GrayRegular = TextStyle(
    fontSize: h3,
    color: iGray,
    fontWeight: regular,
  );
  static TextStyle h1WhiteBold = TextStyle(
    fontSize: h1,
    color: iWhite,
    fontWeight: bold,
  );
  static TextStyle h1WhiteRegular = TextStyle(
    fontSize: h1,
    color: iWhite,
    fontWeight: regular,
  );
  static TextStyle h2WhiteBold = TextStyle(
    fontSize: h2,
    color: iWhite,
    fontWeight: bold,
  );
  static TextStyle h2WhiteRegular = TextStyle(
    fontSize: h2,
    color: iWhite,
    fontWeight: regular,
  );
  static TextStyle h3WhiteBold = TextStyle(
    fontSize: h3,
    color: iWhite,
    fontWeight: bold,
  );
  static TextStyle h3WhiteRegular = TextStyle(
    fontSize: h3,
    color: iWhite,
    fontWeight: regular,
  );
  static TextStyle getTextStyle(TextStyleType type) {
    switch (type) {
      case TextStyleType.h1BlackB:
        return h1BlackBold;
      case TextStyleType.h1BlackR:
        return h1BlackRegular;
      case TextStyleType.h2BlackB:
        return h2BlackBold;
      case TextStyleType.h2BlackR:
        return h2BlackRegular;
      case TextStyleType.h3BlackB:
        return h3BlackBold;
      case TextStyleType.h3BlackR:
        return h3BlackRegular;
      case TextStyleType.h1BlueB:
        return h1BlueBold;
      case TextStyleType.h1BlueR:
        return h1BlueRegular;
      case TextStyleType.h2BlueB:
        return h2BlueBold;
      case TextStyleType.h2BlueR:
        return h2BlueRegular;
      case TextStyleType.h3BlueB:
        return h3BlueBold;
      case TextStyleType.h3BlueR:
        return h3BlueRegular;
      case TextStyleType.h1GrayB:
        return h1GrayBold;
      case TextStyleType.h1GrayR:
        return h1GrayRegular;
      case TextStyleType.h2GrayB:
        return h2GrayBold;
      case TextStyleType.h2GrayR:
        return h2GrayRegular;
      case TextStyleType.h3GrayB:
        return h3GrayBold;
      case TextStyleType.h3GrayR:
        return h3GrayRegular;
      case TextStyleType.h1WhiteB:
        return h1WhiteBold;
      case TextStyleType.h1WhiteR:
        return h1WhiteRegular;
      case TextStyleType.h2WhiteB:
        return h2WhiteBold;
      case TextStyleType.h2WhiteR:
        return h2WhiteRegular;
      case TextStyleType.h3WhiteB:
        return h3WhiteBold;
      case TextStyleType.h3WhiteR:
        return h3WhiteRegular;
      // ... other cases
      default:
        return h1BlackBold;
    }
  }
}

enum TextStyleType {
  h1BlackB,
  h1BlackR,
  h2BlackB,
  h2BlackR,
  h3BlackB,
  h3BlackR,
  h1BlueB,
  h1BlueR,
  h2BlueB,
  h2BlueR,
  h3BlueB,
  h3BlueR,
  h1GrayB,
  h1GrayR,
  h2GrayB,
  h2GrayR,
  h3GrayB,
  h3GrayR,
  h1WhiteB,
  h1WhiteR,
  h2WhiteB,
  h2WhiteR,
  h3WhiteB,
  h3WhiteR,

  // ... other types
}
