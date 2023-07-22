import 'dart:async';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flashcards_quiz/views/answersmodel.dart';
import 'package:flashcards_quiz/views/buttons.dart';
import 'package:flashcards_quiz/views/example_cards.dart';
import 'package:flashcards_quiz/views/model.dart';
import 'package:flashcards_quiz/views/quiz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomWidget extends StatefulWidget {
  const MyCustomWidget({super.key});

  @override
  MyCustomWidgetState createState() => MyCustomWidgetState();
}

class MyCustomWidgetState extends State<MyCustomWidget> {
  final AppinioSwiperController controller = AppinioSwiperController();

  int _timerSeconds = 120;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    //   startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_timerSeconds > 0) {
          _timerSeconds--;
        } else {
          // Timer expired, navigate to the new screen
          _timer?.cancel();
          navigateToNewScreen();
        }
      });
    });
  }

  void navigateToNewScreen() {
    // Replace 'NewScreen()' with the Widget for your new screen.
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const QuizScreen()));
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const Color bgColor = Color(0xFFB9E9FC);
    return Scaffold(
      backgroundColor: bgColor,
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        child: unswipeButton(controller),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            CupertinoIcons.clear,
                            color: Colors.white,
                          )),
                      Expanded(
                        child: LinearProgressIndicator(
                          minHeight: 10,
                          value: 1 - (_timerSeconds / 120),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.70,
              child: AppinioSwiper(
                loop: true,
                backgroundCardsCount: 2,
                swipeOptions: const AppinioSwipeOptions.all(),
                unlimitedUnswipe: true,
                controller: controller,
                unswipe: _unswipe,
                onSwiping: (AppinioSwiperDirection direction) {
                  print("${direction.index}");
                  debugPrint(direction.toString());
                },
                onSwipe: _swipe,
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 40,
                  bottom: 40,
                ),
                onEnd: _onEnd,
                cardsCount: candidates.length,
                cardsBuilder: (BuildContext context, int index) {
                  var cardIndex = candidates[index];
                  var answerQ = answerCandidates[index];
                  print(index);
                  return ExampleCard(
                    candidate: cardIndex,
                    answerCandidate: answerQ,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _swipe(int index, AppinioSwiperDirection direction) {
  print("the card was swiped to the: ${direction.name}");
  print(index);
}

void _unswipe(bool unswiped) {
  if (unswiped) {
    print("SUCCESS: card was unswiped");
  } else {
    print("FAIL: no card left to unswipe");
  }
}

void _onEnd() {
  print("end reached!");
}
