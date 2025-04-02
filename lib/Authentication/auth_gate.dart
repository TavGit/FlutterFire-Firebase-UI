import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import '../Pages/home.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
            providers: [EmailAuthProvider()],
            headerBuilder: (context, constraints, shrinkOffset) {
              return Container(
                width: 400,
                constraints: BoxConstraints(
                  maxWidth: 400, // Sesuai dengan lebar maksimum layar
                ),
                  child: Image.asset('assets/images/banner-academy.png', fit: BoxFit.cover,),
              );
            },
            subtitleBuilder: (context, action) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child:
                  action == AuthAction.signIn
                    ? Text("Welcome back, want to start learning?, please sign in")
                    : Text("Welcome, want to start learning? please sign up now"),
              );
            },
            footerBuilder: (context, action) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16.0),
                  child: 
                    Text("Aplikasi ini dilindungi hak cipta, dengan masuk Anda menyetujui syarat dan ketentuan", style: TextStyle(color: Colors.grey),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  child: 
                    Text("Created by ❤️ Gustav Ibrahim ", style: TextStyle(color: Colors.black),),
                  ),
                ],
              );
            },
            sideBuilder: (context, shrinkOffset) {
              return Container(
                width: 400,
                constraints: BoxConstraints(
                  maxWidth: 400, // Sesuai dengan lebar maksimum layar
                ),
                  child: Image.asset('assets/images/banner-academy.png', fit: BoxFit.cover,),
              );
            },
          );
        }
        return HomeScreen();
      },
    );
  }
}
