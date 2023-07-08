import 'package:easy_localization/easy_localization.dart';
import 'package:exam_6/screen/home.dart';

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // localizationsDelegates: context.localizationDelegates,
      // supportedLocales: context.supportedLocales,
      // locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
