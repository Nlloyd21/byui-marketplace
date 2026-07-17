import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  
  await Supabase.initialize(
    url: 'https://qkluvufzgyqeayfnfsfr.supabase.co',
    publishableKey: 'sb_publishable_uIiZALzXKJ6JY1M_3qY7fg_WLpy7pPA',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BYUI Marketplace',
      theme: ThemeData(
        useMaterial3: true,
        // Using a clean BYUI corporate blue palette vibe
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0062B2)), 
      ),
      home: const Scaffold(
        body: Center(
          child: Text('Backend Connected! Next step: Coding Auth logic.'),
        ),
      ),
    );
  }
}