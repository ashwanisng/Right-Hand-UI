import 'package:flutter/material.dart';
import 'package:flutter_bloc_starter/utils/theme/app_colors.dart' show AppColors;
import 'package:google_fonts/google_fonts.dart';

class Styles {
  Styles._privateConstructor();

  static TextStyle tsBlackRegular24 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w600,
      fontSize: 24.0,
    ),
  );

  static TextStyle tsGrey500Regular14 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColors.grey500,
      fontWeight: FontWeight.w500,
      fontSize: 14.0,
    ),
  );

  static TextStyle tsLightPurple500Regular16 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
    ),
  );

  static TextStyle tsGrey500Regular12 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColors.grey500,
      fontWeight: FontWeight.w400,
      fontSize: 12.0,
    ),
  );

  static TextStyle tsLightPurple500Regular12 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w500,
      fontSize: 12.0,
    ),
  );


  static TextStyle tsWhite500Regular16 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
    ),
  );

  static TextStyle tsGrey500Regular16 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColors.grey500,
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
    ),
  );

  static TextStyle tsWhiteRegular18 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w400,
      fontSize: 18.0,
    ),
  );

  static TextStyle tsPrimaryColorRegular18 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400,
      fontSize: 18.0,
    ),
  );

  static TextStyle h4 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
    ),
  );

  static TextStyle h5 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
    ),
  );

  static TextStyle h6 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
    ),
  );

  static TextStyle h7 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
    ),
  );

  static TextStyle tsLightBlueRegular13 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
    ),
  );
}
