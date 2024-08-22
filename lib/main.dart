import 'package:flutter/material.dart';
import 'package:secondprojec/screen/Cart_Page.dart';
import 'package:secondprojec/screen/home_page.dart';
import 'package:secondprojec/screen/login.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:secondprojec/utility/route.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.system,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: AppBarTheme(color: Colors.white)),
      darkTheme: ThemeData(
          // brightness: Brightness.dark,
          ),
      initialRoute: MyRoutes.homerRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homerRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.CartRoute: (context) => CartPage(),
      },
    );
  }
}
