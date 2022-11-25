import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:sizer/sizer.dart';

const Color primary = Color.fromRGBO(22, 132, 167, 1);
const Color secondary = Color.fromRGBO(9, 165, 153, 1);
const Color tertiary = Color.fromRGBO(246, 236, 114, 1);
const Color quaternary = Color.fromRGBO(246, 246, 246, 1);
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


Future<Color> getImagePalette(ImageProvider imageProvider) async {
  final PaletteGenerator paletteGenerator =
      await PaletteGenerator.fromImageProvider(imageProvider);
  return paletteGenerator.vibrantColor!.color;
}
