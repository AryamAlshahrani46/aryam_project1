import 'package:flutter/material.dart';
import 'package:aryam_project1/screens/home_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
void main()async {
   WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL'] ?? '',
    publishableKey: dotenv.env['SUPABASE_ANON_KEY'] ?? '',
   // url: "https://lprlgadvlfxgwwuzajrv.supabase.co",
   // publishableKey: "sb_publishable_50ZFBd1llqJC6NTLnBzQZg_nQeWfVpE",
  );
  runApp(MainApp());
} 

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
