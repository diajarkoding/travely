import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color whiteColor = const Color(0xffFFFFFF);
Color blackColor = const Color(0xff222222);
Color greyColor = const Color(0xffBEBFCA);

TextStyle whiteTextStyle = GoogleFonts.mulish(color: whiteColor);
TextStyle whiteLightTextStyle =
    GoogleFonts.mulish(color: whiteColor.withOpacity(0.60));
TextStyle blackTextStyle = GoogleFonts.mulish(color: blackColor);
TextStyle greyTextStyle = GoogleFonts.mulish(color: greyColor);

FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
