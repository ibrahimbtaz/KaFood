import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:sizer/sizer.dart';

const Color primary = Color.fromRGBO(22, 132, 167, 1);
const Color secondary = Color.fromRGBO(9, 165, 153, 1);
const Color tertiary = Color.fromRGBO(246, 236, 114, 1);
const Color quaternary = Color.fromRGBO(246, 246, 246, 1);
const Color kBorderColor = Color(0xffE5E5E5);
const Color whiteColor = Colors.white;
const Color blackColor = Colors.black;

Future<Color> getImagePalette(ImageProvider imageProvider) async {
  final PaletteGenerator paletteGenerator =
      await PaletteGenerator.fromImageProvider(imageProvider);
  return paletteGenerator.vibrantColor!.color;
}
