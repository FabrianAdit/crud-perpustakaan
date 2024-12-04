import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'book_list_page.dart';

        
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://xagrwwauvmyjhlepnjoc.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhhZ3J3d2F1dm15amhsZXBuam9jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzMyOTY3NDYsImV4cCI6MjA0ODg3Mjc0Nn0.9wMhtV8gLTiyds2oPF53qJJpcR7fJkXQ9biYjc3fExY',
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Digital Library",
      home: BookListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
