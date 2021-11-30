
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'page/pages_export.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vault Anime',
      theme: ThemeData(
      textTheme: GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        'rcontrasena': (context) => const Rcontrasena(),
        'crearnuevousuario': (context) => const CrearNuevoUsuario(),
      },
    );
  }
}
