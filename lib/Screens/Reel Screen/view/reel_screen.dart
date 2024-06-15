import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_shorts_app/Utils/reel_details.dart';

import 'controleer_screen.dart';

class ReelScreen extends StatefulWidget {
  const ReelScreen({super.key});

  @override
  State<ReelScreen> createState() => _ReelScreenState();
}

class _ReelScreenState extends State<ReelScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final height = mediaQuery.size.height;
    final width = mediaQuery.size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.transparent,
        toolbarHeight: 70,
        title: const Row(children: [
          Text(
            "Trending",
            style: TextStyle(color: Colors.white),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          )
        ]),
      ),
      body: Container(
        height: height,
        width: width,
        // color: Colors.grey,
        child: Swiper(
          scrollDirection: Axis.vertical,
          itemCount: reelDetails.length,
          itemBuilder: (context, index) => Container(
            alignment: Alignment.bottomLeft,
            height: height,
            width: width,
            child: Stack(
              children: [
                ContentScreen(
                  videoAssetPath: reelDetails[index]['vid'],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffFD7171),
                          radius: 28,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(reelDetails[index]["id"]),
                      const SizedBox(height: 10),
                      Text(reelDetails[index]["captions"]),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(Icons.music_note_outlined),
                          Text(
                            reelDetails[index]["Music"],
                            style: const TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              color: const Color(0xffFD7171),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star_border),
                                Text("  Featured"),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  const Icon(CupertinoIcons.heart, size: 40),
                                  CupertinoButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      setState(() {
                                        isLike = !isLike;
                                      });
                                    },
                                    child: Icon(
                                      CupertinoIcons.heart_fill,
                                      color: isLike
                                          ? Colors.red
                                          : Colors.transparent,
                                      size: 33,
                                    ),
                                  ),
                                ],
                              ),
                              const Text("300k")
                            ],
                          ),
                          const Column(
                            children: [
                              Icon(CupertinoIcons.chat_bubble_text, size: 40),
                              Text("30k")
                            ],
                          ),
                          const Icon(Icons.share, size: 40),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const LinearProgressIndicator(value: 0.5),
                      SizedBox(height: height * 0.15),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: 130,
            width: width / 1.1,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(CupertinoIcons.home, size: 35),
                  Icon(CupertinoIcons.search, size: 35),
                  Text("      "),
                  Icon(CupertinoIcons.paperplane, size: 35),
                  Icon(CupertinoIcons.person, size: 35),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            child: CupertinoButton(
              pressedOpacity: 0.5,
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: const CircleAvatar(
                backgroundColor: Color(0xffFD7171),
                radius: 35,
                child: Icon(
                  CupertinoIcons.play_arrow_solid,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

bool isLike = true;
