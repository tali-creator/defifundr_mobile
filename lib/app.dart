import 'package:defifundr_mobile/signin.dart';
import 'package:flutter/material.dart'
    show BuildContext, MaterialApp, StatelessWidget, Widget;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
    home: SignInScreen(),

        
      );
}
