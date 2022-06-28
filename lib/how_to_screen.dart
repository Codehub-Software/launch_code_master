import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HowToScreen extends StatefulWidget {
  const HowToScreen({Key? key}) : super(key: key);

  @override
  State<HowToScreen> createState() => _HowToScreenState();
}

class _HowToScreenState extends State<HowToScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(color: Colors.black),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'HOW TO USE THE LAUNCH CODE® TEMPO TRAINER',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Congrats on taking a step towards a better swing!!',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Using this app is super simple.  We have outlined some steps below to get you started.',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'FINDING YOUR TEMPO',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '1.To get started, the first thing we want to do is find the tempo closest to our current swing tempo.  To do this, we are going to start with the 30/10 tempo and work our way down through the other tempos.  Press the button to get the notes going, grab a club, and start trying to match the notes to your own swing.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '2.The first note corresponds to the start of your golf swing.  The second, the top of your backswing.  The third, impact.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '3.You will know quickly if a tempo feels off or close to the speed of your current swing.  Regardless, continue to proceed through the rest of the tempo speeds.  Doing this will help you get a feel for the tempo that best suits your current swing and allow you to experience what it may be like to swing faster.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'ONCE YOU KNOW YOUR TEMPO',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Now that you have picked the tempo you are going to train with, let’s get started.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'A quick note.  Some of you may have issues at first.  The tempo may feel off or you may find it hard to hit the notes.  My word of advice is this, STAY WITH IT!  Any type of golf training takes time and tempo training is no different.  Give yourself the space to be off at first, but know that you will master your tempo.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'The biggest issue that many of you will have with tempo training, has to do with hitting the impact note.  This is common for a lot of golfers, as they either have too much of a body move from the top or hold their lag for too long.  If you believe you may be having this problem, head on over to our website and visit the “Tempo Training” page.  On the tempo training page, we will detail some tips and tricks to help you with your quest to master tempo training.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextButton(
                        onPressed: () async {
                          const url =
                              'https://www.launchcodegolf.com/pages/tempo-training';
                          if (await canLaunch(url)) {
                            await launch(
                              url,
                              forceSafariVC: true,
                              enableJavaScript: true,
                              forceWebView: true,
                            );
                          }
                        },
                        child: const Text(
                          'https://www.launchcodegolf.com/pages/tempo-training',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontFamily: 'SourceSansPro',
                            fontWeight: FontWeight.normal,
                          ),
                        )),
                    const SizedBox(height: 10),
                    const Text(
                      'HOW MUCH SHOULD I TRAIN?',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'This answer is completely dependent on you.  I would recommend at least once a day, for at least 5-10 minutes, but work it in when you can!  There is no amount that is too much necessarily, but burnout is real.  So, take it slow and make it a part of your routine, not the whole routine.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'What is even more important than how much you are training; is how you are training.  There are two ways to implement training.  The first, is to just swing along to the tempo, trying to match the three positions to the notes.  If this is all you have time for, do it as much as you can.  However, if you have the time, the second way is the best option. The second option is to hit balls utilizing the tempo trainer.  ',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'My recommended routine when training on the range is as follows:',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Make three swings without a ball and then one with a ball.  Repeat this cycle over and over, switching clubs as often as every other shot.  We want to recreate the actual game as much as possible. Switching clubs every other shot will help us with that.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Just remember, tempo training should be a part of your training session…not your whole training session.  I recommend starting each training session working on your tempo.  It is a great way to setup the rest of your training session for success.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'TIPS',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Here are some some tips to keep in mind.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '1.If you have them, utilize earbuds while practicing tempo in public.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      '2.Utilize the tempo trainer prior to playing.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      '3.When training, try to start mimicking the notes and tempo either in your head or verbally.  This will help should you need something out on the course to tap into.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'ONE FINAL TIP',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'HAVE FUN!  GOLF IS HARD.  STAY POSITIVE AND YOUR GAME WILL REAP THE REWARDS.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
          currentIndex: 1,
          onTap: (index) {
            if (index != 1) {
              Navigator.pop(context);
            }
          },
        ),
      );
}
