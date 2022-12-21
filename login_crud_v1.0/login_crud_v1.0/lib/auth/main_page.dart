import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import '../presentation/home_page_carrito.dart';
import 'auth_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super (key : key);

  @override
  State<MainPage> createState()=> _MainPageState();
}

class _MainPageState extends State <MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomePageCarrito();
          } else {
            return const AuthPage();
          }
        },
      ),
    );
  }
}