import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/features/landing/screens/landing_screen.dart';
import 'package:whatsapp_clone/firebase_options.dart';
import 'package:whatsapp_clone/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      onGenerateRoute: (settings) => generateRoute(settings),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme:  AppBarTheme(
          color: appBarColor,
        ),
      ),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileLayoutScreen(),
      //   webScreenLayout: WebLayoutScreen(),
      // ),
      home: LandingScreen(),
    );
  }
}
