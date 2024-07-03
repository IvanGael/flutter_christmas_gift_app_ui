import 'package:christmas_gift_app_ui/home_screen.dart';
import 'package:christmas_gift_app_ui/splash_screen.dart';
import 'package:christmas_gift_app_ui/theme_manager.dart';
import 'package:christmas_gift_app_ui/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Changer la couleur de la barre d'état
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Utils.getColorFromHex("#fe0000"), // Couleur de la barre d'état
        statusBarIconBrightness: Brightness.light, // Couleur des icônes (blanc ou noir)
      )
    );

    return MaterialApp(
      title: 'Christmas Gift app UI',
      theme: ThemeManager().lightTheme,
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/home": (context) => const HomeScreen()
      },
      home: const SplashScreen(),
    );
  }
}

