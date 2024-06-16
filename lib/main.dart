import 'package:flutter/material.dart';
import 'package:instagram_shorts_app/Screens/Reel%20Screen/Provider/reel_provider.dart';
import 'package:instagram_shorts_app/Screens/Reel%20Screen/view/reel_screen.dart';
import 'package:provider/provider.dart';

import 'Screens/Intro Screen/view/intro_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ReelProvider(""),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: IntroFirst(),
      ),
    );
  }
}
