import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_talks/slideSelector.dart';
import 'package:flutter_talks/slides/AppDetailed.dart';
import 'package:flutter_talks/slides/appCases.dart';
import 'package:flutter_talks/slides/ecosystem.dart';
import 'package:flutter_talks/slides/graphicHorsepower.dart';
import 'package:flutter_talks/slides/hamiltonCase.dart';
import 'package:flutter_talks/slides/hotReloadHead.dart';
import 'package:flutter_talks/slides/keyComponent.dart';
import 'package:flutter_talks/slides/popularTools.dart';
import 'package:flutter_talks/slides/ques.dart';
import 'package:flutter_talks/slides/resources.dart';
import 'package:flutter_talks/slides/slide1.dart';
import 'package:flutter_talks/slides/slide10.dart';
import 'package:flutter_talks/slides/slide2.dart';
import 'package:flutter_talks/slides/slide3.dart';
import 'package:flutter_talks/slides/slide4.dart';
import 'package:flutter_talks/slides/slide6.dart';
import 'package:flutter_talks/slides/slide7.dart';
import 'package:flutter_talks/slides/slide8.dart';
import 'package:flutter_talks/slides/slide9.dart';
import 'package:flutter_talks/slides/stful.dart';
import 'package:flutter_talks/slides/stless.dart';
import 'package:flutter_talks/slides/stlessVsStfulHead.dart';
import 'package:flutter_talks/slides/useFlutter.dart';
import 'package:flutter_talks/slides/widgetsEverywhere.dart';
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
      child: MultiProvider(providers: [
        ChangeNotifierProvider<Slide>(
          create: (context) => Slide(),
        ),
      ],child: MyApp())));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
  FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      title: 'Flutter Talks',
      debugShowCheckedModeBanner: false,
      navigatorObservers: <NavigatorObserver>[observer],
      theme: themeNotifier.getTheme(),
      routes: {
        '/': (context) => const Slide1(),
        '/slide1': (context) => const Slide1(),
        '/slide2': (context) => const Slide2(),
        '/slide3': (context) => const Slide3(),
        '/slide4': (context) => const Slide4(),
        '/slide5': (context) => const FlutterOrganisation(),
        '/slide6': (context) => const Slide6(),
        '/slide7': (context) => const Slide7(),
        '/slide8': (context) => const Slide8(),
        '/slide9': (context) => const Slide9(),
        '/slide10': (context) => const Slide10(),
        '/slide11': (context) => const AppCases(),
        '/slide12': (context) => const GpayCase(),
        '/slide13': (context) => const GraphicHorsePower(),
        '/slide14': (context) => const HamiltonCase(),
        '/slide15': (context) => const PopularTools(),
        '/slide16': (context) => const Ecosystem(),
        '/slide17': (context) => const UseFlutter(),
        '/slide18': (context) => const KeyComponent(),
        '/slide19': (context) => const AppDetailed1(),
        '/slide20': (context) => const AppDetailed2(),
        '/slide21': (context) => const AppDetailed3(),
        '/slide22': (context) => const WidgetImage(),
        '/slide23': (context) => const StlessVsStful(),
        '/slide24': (context) => const Stateless(),
        '/slide25': (context) => const Stateful(),   
        '/slide26': (context) => const HotReloadHead(),
        '/slide27': (context) => const HotReloadExplained(),
        '/slide28': (context) => const HotReload(),
        '/slide29': (context) => const Resources(),
        '/slide30': (context) => const Ques(),
      },
      initialRoute: "/slide29",
      //home: const SlideSelector(),
    );
  }
}


