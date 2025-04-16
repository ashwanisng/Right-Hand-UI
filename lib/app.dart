import 'package:flutter/material.dart';
import 'package:flutter_bloc_starter/utils/theme/app_theme.dart' show AppTheme;
import 'package:flutter_bloc_starter/utils/values/env.dart' show Env;
import 'package:flutter_bloc_starter/view/module/home/home_view.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Env.title,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const HomeView(),
    );
  }
}
