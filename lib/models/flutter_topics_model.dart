import 'package:flashcards_quiz/models/science_questions_model.dart';
import 'package:flashcards_quiz/models/maths_questions_model.dart';
import 'package:flashcards_quiz/models/history_questions_model.dart';
import 'package:flashcards_quiz/models/language_arts_questions_model.dart';
import 'package:flutter/cupertino.dart';

const Color cardColor = Color(0xFF4993FA);

class FlutterTopics {
  final int id;
  final String topicName;
  final IconData topicIcon;
  final Color topicColor;
  final List<dynamic> topicQuestions;

  FlutterTopics({
    required this.id,
    required this.topicColor,
    required this.topicIcon,
    required this.topicName,
    required this.topicQuestions,
  });
}

final List<FlutterTopics> flutterTopicsList = [
  FlutterTopics(
    id: 0,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.lab_flask,
    topicName: "Science",
    topicQuestions: scienceQuestionList,
  ),
  FlutterTopics(
    id: 1,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.plus_slash_minus,
    topicName: "Mathematics",
    topicQuestions: mathsQuestionList,
  ),
  FlutterTopics(
    id: 2,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.book,
    topicName: "History",
    topicQuestions: historyQuestionList,
  ),
  FlutterTopics(
    id: 3,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.textformat_superscript,
    topicName: "Language Arts",
    topicQuestions: languageArtsQuestionList,
  ),
];
