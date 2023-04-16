import 'package:builtop_customer_app/constants/color.dart';
import 'package:builtop_customer_app/constants/fonts.dart';
import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: "Tajawal",
      applyElevationOverlayColor: false,
      brightness: Brightness.light,
      colorSchemeSeed: ColorConst.primary,
      textTheme:
          Theme.of(context).textTheme.apply(fontFamily: FontsConst.poppins),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor: ColorConst.scaffoldBackgtoundColor,
      ),
      scaffoldBackgroundColor: ColorConst.scaffoldBackgtoundColor,
      cardTheme: CardTheme.of(context).copyWith(
        margin: EdgeInsets.zero,
        color: Colors.white,
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        elevation: 10.0,
        shadowColor: Colors.grey.shade50.withOpacity(0.25),
      ),

      checkboxTheme: const CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
      // dropdownMenuTheme: const DropdownMenuThemeData(
      //   inputDecorationTheme: InputDecorationTheme(
      //     enabledBorder: OutlineInputBorder(
      //       borderSide: BorderSide(color: Colors.red)
      //     )
      //   )
      // )
    );
  }

  static MaterialColor _createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }
}
