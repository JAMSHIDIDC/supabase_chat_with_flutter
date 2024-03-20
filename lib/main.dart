import 'package:flutter/material.dart';
import 'package:my_chat_app/constant.dart';
import 'package:my_chat_app/splash.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Supabase.initialize(
  //   url: 'https://pzavrvsfsplrlihnhpmt.supabase.co',
  //   anonKey:
  //       'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB6YXZydnNmc3BscmxpaG5ocG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg0OTMwMzUsImV4cCI6MjAyNDA2OTAzNX0.qGo3jenK2oMm2C2tXb8sC4P30etbl-__krnj-IWD_Bs',
  // );
  await Supabase.initialize(
    url: 'https://gosnridlljsuujlryxdr.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdvc25yaWRsbGpzdXVqbHJ5eGRyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA4NDQ3NTUsImV4cCI6MjAyNjQyMDc1NX0.YLulvxBa8k3xofEpEAQjHZbxeOd3OQQoFck7vPXBBpo',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Chat App',
      theme: appTheme,
      home: const SplashPage(),
    );
  }
}
