import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/app.dart';

Future<void> main() async {
  runApp(const NetflixApp());
}

class NetflixApp extends StatefulWidget {

  const NetflixApp({Key? key}) : super(key: key);

  @override
  _NetflixAppState createState() => _NetflixAppState();
}

class _NetflixAppState extends State<NetflixApp> {

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(fontFamily: GoogleFonts.nunito().fontFamily);
    return MaterialApp(
      theme: theme.copyWith(
        primaryColor: Colors.black,
        colorScheme: theme.colorScheme.copyWith(secondary: Colors.white, secondaryVariant: Colors.grey)    
      ),
      debugShowCheckedModeBanner: false,
      home: const App()
    );
  }
}