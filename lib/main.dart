import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahelfund/utils/palette.dart';
import 'screens/screens.dart';

void main() {
  runApp(ProviderScope(child: SahelFund()));
}

class SahelFund extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'sahel_finances',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            titleTextStyle:
                GoogleFonts.josefinSans(fontWeight: FontWeight.w200),
            centerTitle: false,
            elevation: 0.0,
            color: Palette.primary,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme:
              GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.green,
        ),
        home: SahelFundHome());
  }
}
