import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          icon: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          onPressed: () {},
        ),
        centerTitle: false,
        title: Text(
          "Tìm kiếm",
          style: GoogleFonts.beVietnamPro().copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w100,
            fontSize: 14,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.edit,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
