import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

const Color primary = Color.fromRGBO(152, 168, 248, 1);
const Color secondary = Color.fromRGBO(188, 206, 248, 1);
const Color whiteColor = Colors.white;
const Color blackColor = Colors.black;


const double defaultpadding = 20.0;
const kSpacingUnit = 10;
//colors
const Color kSecondaryColor = Color(0xFF6789CA);
const Color kContainerColor = Color(0xFF777777);
const Color kOtherColor = Color(0xFFF4F6F7);
const Color kTextLightColor = Color(0xFFA5A5A5);
const Color kErrorBorderColor = Color(0xFFE74C3C);
const kBorderColor = Color(0xffE5E5E5);
const kTextColor = Colors.black;

//default value
const kDefaultPadding = 20.0;

const sizedBox = SizedBox(
  height: kDefaultPadding,
);
const kWidthSizedBox = SizedBox(
  width: kDefaultPadding,
);

const kHalfSizedBox = SizedBox(
  height: kDefaultPadding / 2,
);

const kHalfWidthSizedBox = SizedBox(
  width: kDefaultPadding / 2,
);

final kTopBorderRadius = BorderRadius.only(
  topLeft: Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  topRight:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

final kBottomBorderRadius = BorderRadius.only(
  bottomRight:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  bottomLeft:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

// final kInputTextStyle = GoogleFonts.poppins(
//     color: kTextBlackColor, fontSize: 11.sp, fontWeight: FontWeight.w500);

//validation for mobile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

SvgPicture menuIcon = SvgPicture.asset("assets/icons/menu_duo_icon.svg");
AssetImage ads1 = const AssetImage("assets/images/mycatering1ads.png");
AssetImage ads2 = const AssetImage("assets/images/mycatering2ads.png");
SvgPicture backicon = SvgPicture.asset("assets/icons/circle_left_icon.svg");

