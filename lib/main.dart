import 'package:flutter/material.dart';
import 'package:aryam_project1/screens/home_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main()async {
   WidgetsFlutterBinding.ensureInitialized();
    await dotenv.load();

  await Supabase.initialize(
    url: dotenv.get('API_URL'),
    publishableKey:dotenv.get('API_KEY'),
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
