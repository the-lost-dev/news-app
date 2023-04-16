import 'package:news_app/exports.dart';

class NewsAppTheme {
  static TextTheme dropsTextTheme = TextTheme(
    displayLarge: GoogleFonts.openSans(
      fontSize: AppSizes.p32,
      fontWeight: FontWeight.w700,
      color: AppColors.black100,
    ),
    displayMedium: GoogleFonts.openSans(
      fontSize: AppSizes.p16,
      fontWeight: FontWeight.w600,
      color: AppColors.black100,
    ),
    displaySmall: GoogleFonts.openSans(
      fontSize: AppSizes.p14,
      fontWeight: FontWeight.w400,
      color: AppColors.black100,
    ),
    bodyLarge: GoogleFonts.openSans(
      fontSize: AppSizes.p16,
      fontWeight: FontWeight.w600,
      color: AppColors.black100,
    ),
    bodyMedium: GoogleFonts.openSans(
      fontSize: AppSizes.p16,
      fontWeight: FontWeight.w500,
      color: AppColors.black100,
    ),
    bodySmall: GoogleFonts.openSans(
      fontSize: AppSizes.p16,
      fontWeight: FontWeight.w400,
      color: AppColors.black100,
    ),
    titleMedium: GoogleFonts.openSans(
      fontSize: AppSizes.p16,
      fontWeight: FontWeight.w600,
      color: AppColors.black100,
    ),
  );

  static final pandascrowLightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.scaffoldBgColor,
    textTheme: dropsTextTheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.scaffoldBgColor,
      elevation: 0,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.black100,
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primaryColor,
      onPrimary: AppColors.white,
      secondary: AppColors.grey,
      onSecondary: AppColors.black100,
      error: AppColors.red,
      onError: AppColors.white,
      background: AppColors.grey,
      onBackground: AppColors.black100,
      surface: AppColors.white,
      onSurface: AppColors.black100,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      hintStyle: GoogleFonts.openSans(
        fontSize: AppSizes.p16,
        fontWeight: FontWeight.w400,
        color: AppColors.grey200,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.p10),
        borderSide: const BorderSide(color: AppColors.grey100),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.p10),
        borderSide: const BorderSide(color: AppColors.grey100),
      ),
      errorBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.p10),
        borderSide: const BorderSide(color: AppColors.red),
      ),
      focusColor: AppColors.grey200,
    ),
  );
}
