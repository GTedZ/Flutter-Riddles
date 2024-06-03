import 'dart:math';

class NavigateQuestion {
  final int id;
  final String text;
  final List<NavigationsOption> options;
  bool isLocked;
  NavigationsOption? selectedWiidgetOption;
  NavigationsOption? correctAnswer;

  NavigateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  NavigateQuestion copyWith() {
    List<NavigationsOption> shuffledOptions = List.from(options);
    shuffledOptions.shuffle(Random());
    
    return NavigateQuestion(
      id: id,
      text: text,
      options: shuffledOptions,
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class NavigationsOption {
  final String text;
  final bool isCorrect;

  const NavigationsOption({
    required this.text,
    required this.isCorrect,
  });
}

final languageArtsQuestionList = [
  NavigateQuestion(
    text: "What is a noun?",
    options: [
      const NavigationsOption(text: "A person, place, thing, or idea", isCorrect: true),
      const NavigationsOption(text: "An action word", isCorrect: false),
      const NavigationsOption(text: "A descriptive word", isCorrect: false),
      const NavigationsOption(text: "A joining word", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const NavigationsOption(text: "A person, place, thing, or idea", isCorrect: true),
  ),
  NavigateQuestion(
    text: "How do you use an adjective in a sentence?",
    options: [
      const NavigationsOption(text: "By describing a noun", isCorrect: true),
      const NavigationsOption(text: "By expressing an action", isCorrect: false),
      const NavigationsOption(text: "By connecting two sentences", isCorrect: false),
      const NavigationsOption(text: "By replacing a noun", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const NavigationsOption(text: "By describing a noun", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What is the main idea of a story?",
    options: [
      const NavigationsOption(text: "The central point or theme", isCorrect: true),
      const NavigationsOption(text: "A minor character", isCorrect: false),
      const NavigationsOption(text: "A specific event", isCorrect: false),
      const NavigationsOption(text: "The setting of the story", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const NavigationsOption(text: "The central point or theme", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What is a synonym?",
    options: [
      const NavigationsOption(text: "A word that has the same or nearly the same meaning as another word", isCorrect: true),
      const NavigationsOption(text: "A word that has the opposite meaning", isCorrect: false),
      const NavigationsOption(text: "A word that sounds the same as another word", isCorrect: false),
      const NavigationsOption(text: "A word that is spelled the same but has a different meaning", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const NavigationsOption(text: "A word that has the same or nearly the same meaning as another word", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What is a verb?",
    options: [
      const NavigationsOption(text: "An action word", isCorrect: true),
      const NavigationsOption(text: "A describing word", isCorrect: false),
      const NavigationsOption(text: "A person, place, or thing", isCorrect: false),
      const NavigationsOption(text: "A joining word", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const NavigationsOption(text: "An action word", isCorrect: true),
  ),
  NavigateQuestion(
    text: "How do you form the past tense of a regular verb?",
    options: [
      const NavigationsOption(text: "By adding -ed to the base form", isCorrect: true),
      const NavigationsOption(text: "By adding -ing to the base form", isCorrect: false),
      const NavigationsOption(text: "By changing the first letter", isCorrect: false),
      const NavigationsOption(text: "By adding -s to the base form", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const NavigationsOption(text: "By adding -ed to the base form", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What is a pronoun?",
    options: [
      const NavigationsOption(text: "A word that replaces a noun", isCorrect: true),
      const NavigationsOption(text: "A word that describes a noun", isCorrect: false),
      const NavigationsOption(text: "A word that shows action", isCorrect: false),
      const NavigationsOption(text: "A word that joins two sentences", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const NavigationsOption(text: "A word that replaces a noun", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What is an antonym?",
    options: [
      const NavigationsOption(text: "A word that has the opposite meaning of another word", isCorrect: true),
      const NavigationsOption(text: "A word that has the same meaning", isCorrect: false),
      const NavigationsOption(text: "A word that sounds the same", isCorrect: false),
      const NavigationsOption(text: "A word that is spelled the same", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const NavigationsOption(text: "A word that has the opposite meaning of another word", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What is a compound word?",
    options: [
      const NavigationsOption(text: "A word made up of two or more smaller words", isCorrect: true),
      const NavigationsOption(text: "A word with multiple meanings", isCorrect: false),
      const NavigationsOption(text: "A word with a prefix", isCorrect: false),
      const NavigationsOption(text: "A word with a suffix", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const NavigationsOption(text: "A word made up of two or more smaller words", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What is a sentence fragment?",
    options: [
      const NavigationsOption(text: "An incomplete sentence", isCorrect: true),
      const NavigationsOption(text: "A sentence with too many words", isCorrect: false),
      const NavigationsOption(text: "A sentence with a lot of punctuation", isCorrect: false),
      const NavigationsOption(text: "A sentence with a compound subject", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const NavigationsOption(text: "An incomplete sentence", isCorrect: true),
  ),
  NavigateQuestion(
    text: "How do you identify the subject of a sentence?",
    options: [
      const NavigationsOption(text: "By finding the noun or pronoun that performs the action", isCorrect: true),
      const NavigationsOption(text: "By finding the verb", isCorrect: false),
      const NavigationsOption(text: "By finding the adjective", isCorrect: false),
      const NavigationsOption(text: "By finding the adverb", isCorrect: false),
    ],
    id: 10,
    correctAnswer: const NavigationsOption(text: "By finding the noun or pronoun that performs the action", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What is a homophone?",
    options: [
      const NavigationsOption(text: "Two or more words that sound the same but have different meanings and spellings", isCorrect: true),
      const NavigationsOption(text: "Two or more words with the same spelling but different meanings", isCorrect: false),
      const NavigationsOption(text: "Two or more words with opposite meanings", isCorrect: false),
      const NavigationsOption(text: "Two or more words that rhyme", isCorrect: false),
    ],
    id: 11,
    correctAnswer: const NavigationsOption(text: "Two or more words that sound the same but have different meanings and spellings", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What is an adverb?",
    options: [
      const NavigationsOption(text: "A word that describes a verb, adjective, or other adverb", isCorrect: true),
      const NavigationsOption(text: "A word that replaces a noun", isCorrect: false),
      const NavigationsOption(text: "A word that shows action", isCorrect: false),
      const NavigationsOption(text: "A word that joins sentences", isCorrect: false),
    ],
    id: 12,
    correctAnswer: const NavigationsOption(text: "A word that describes a verb, adjective, or other adverb", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What is a preposition?",
    options: [
      const NavigationsOption(text: "A word that shows the relationship between a noun (or pronoun) and other words in a sentence", isCorrect: true),
      const NavigationsOption(text: "A word that describes a noun", isCorrect: false),
      const NavigationsOption(text: "A word that expresses an action", isCorrect: false),
      const NavigationsOption(text: "A word that replaces a noun", isCorrect: false),
    ],
    id: 13,
    correctAnswer: const NavigationsOption(text: "A word that shows the relationship between a noun (or pronoun) and other words in a sentence", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What is the setting of a story?",
    options: [
      const NavigationsOption(text: "The time and place where the story occurs", isCorrect: true),
      const NavigationsOption(text: "The main character of the story", isCorrect: false),
      const NavigationsOption(text: "The main idea of the story", isCorrect: false),
      const NavigationsOption(text: "The conflict in the story", isCorrect: false),
    ],
    id: 14,
    correctAnswer: const NavigationsOption(text: "The time and place where the story occurs", isCorrect: true),
  ),
];
