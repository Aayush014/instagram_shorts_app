import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_shorts_app/Screens/Reel%20Screen/view/reel_screen.dart';

class IntroFirst extends StatelessWidget {
  const IntroFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                introScreen[0],
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.08),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: CupertinoButton(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffFD7171),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text("Next",style: TextStyle(color: Colors.black),),
                  onPressed: () => Navigator.of(context).pushReplacement(
                    CupertinoPageRoute(
                      builder: (context) => const IntroSecond(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IntroSecond extends StatelessWidget {
  const IntroSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                introScreen[1],
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.08),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: CupertinoButton(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffFD7171),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text("Next",style: TextStyle(color: Colors.black),),
                  onPressed: () => Navigator.of(context).pushReplacement(
                    CupertinoPageRoute(
                      builder: (context) => const IntroLast(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IntroLast extends StatelessWidget {
  const IntroLast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                introScreen[2],
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.08),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: CupertinoButton(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffFD7171),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () => Navigator.of(context).pushReplacement(
                    CupertinoPageRoute(
                      builder: (context) => ReelScreen(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List introScreen = [
  "Assets/Img/intro 1.jpg",
  "Assets/Img/intro 2.jpg",
  "Assets/Img/intro 3.jpg",
];
