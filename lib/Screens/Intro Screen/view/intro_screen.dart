import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          children: [
            FirstIntro(),
            SecondIntro(),
            ThirdIntro()
          ],
        ),
      ),
    );
  }
}


class FirstIntro extends StatelessWidget {
  const FirstIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SecondIntro extends StatelessWidget {
  const SecondIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ThirdIntro extends StatelessWidget {
  const ThirdIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


