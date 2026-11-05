import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://bpvtrqthhsuzfsrufmnh.supabase.co',
    publishableKey: 'sb_publishable_fXdXBp-CEWwYp0xa7xBZvQ_vaRWT-Aa',
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Supabase Storage Apps",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomePage(
        ),
    );
  }
}