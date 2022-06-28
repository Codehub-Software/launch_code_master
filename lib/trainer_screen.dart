import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:launch_code_hybrid/how_to_screen.dart';

class TrainerScreen extends StatefulWidget {
  const TrainerScreen({Key? key}) : super(key: key);

  @override
  State<TrainerScreen> createState() => _TrainerScreenState();
}

class _TrainerScreenState extends State<TrainerScreen> {
  AudioPlayer advancePlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();
  int currentButton = 0;
  int position = 0;
  late String localPathFile;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    advancePlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: advancePlayer);
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async {
          advancePlayer.stop();
          return true;
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
                SizedBox(
                  width: 300,
                  child: Image.asset('assets/images/logo.png'),
                ),
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        openPlayer('30_10.mp3', 1);
                      },
                      child: Container(
                        width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                            color: currentButton == 1
                                ? Colors.red
                                : Colors.transparent,
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            '30/10',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      onTap: () {
                        openPlayer('27_9.mp3', 2);
                      },
                      child: Container(
                        width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                            color: currentButton == 2
                                ? Colors.red
                                : Colors.transparent,
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            '27/9',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        openPlayer('24_8.mp3', 3);
                      },
                      child: Container(
                        width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                            color: currentButton == 3
                                ? Colors.red
                                : Colors.transparent,
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            '24/8',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),
                    InkWell(
                      onTap: () {
                        openPlayer('21_7.mp3', 4);
                      },
                      child: Container(
                        width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                            color: currentButton == 4
                                ? Colors.red
                                : Colors.transparent,
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            '21/7',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        openPlayer('18_6.mp3', 5);
                      },
                      child: Container(
                        width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                            color: currentButton == 5
                                ? Colors.red
                                : Colors.transparent,
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            '18/6',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      onTap: () {
                        openPlayer('15_5.mp3', 6);
                      },
                      child: Container(
                        width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                            color: currentButton == 6
                                ? Colors.red
                                : Colors.transparent,
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            '15/5',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music),
                label: 'Training Page',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.info_outline),
                label: 'How To',
              ),
            ],
            backgroundColor: Colors.black,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.white,
            currentIndex: 0,
            onTap: (index) {
              if (index != 0) {
                advancePlayer.stop();
                currentButton = 0;
                openPlayer('', 0);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HowToScreen()),
                );
              }
            },
          ),
        ),
      );

  void openPlayer(String mp3, int position) {
    if (currentButton == position) {
      advancePlayer.stop();
      currentButton = 0;
    } else {
      currentButton = position;
      advancePlayer.stop();
      localPathFile = 'musics/$mp3';
      audioCache.play(localPathFile);
    }
    setState(() {});
  }
}
