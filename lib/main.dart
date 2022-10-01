import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_talks/slideSelector.dart';
import 'package:flutter_talks/slides/slide1.dart';
import 'package:flutter_talks/slides/slide10.dart';
import 'package:flutter_talks/slides/slide2.dart';
import 'package:flutter_talks/slides/slide3.dart';
import 'package:flutter_talks/slides/slide4.dart';
import 'package:flutter_talks/slides/slide6.dart';
import 'package:flutter_talks/slides/slide7.dart';
import 'package:flutter_talks/slides/slide8.dart';
import 'package:flutter_talks/slides/slide9.dart';
import 'package:flutter_talks/theme.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(ThemeNotifier.darkTheme),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
  FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      navigatorObservers: <NavigatorObserver>[observer],
      theme: themeNotifier.getTheme(),
      routes: {
        '/slide1': (context) => const Slide1(),
        '/slide2': (context) => const Slide2(),
        '/slide3': (context) => const Slide3(),
        '/slide4': (context) => const Slide4(),
        //'/slide5': (context) => const Slide5(),
        '/slide6': (context) => const Slide6(),
        '/slide7': (context) => const Slide7(),
        '/slide8': (context) => const Slide8(),
        '/slide9': (context) => const Slide9(),
        '/slide10': (context) => const Slide10(),
      },
      home: const SlideSelector(),
    );
  }
}


