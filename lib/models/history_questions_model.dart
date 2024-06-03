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

final historyQuestionList = [
  NavigateQuestion(
    text: "Who was the first President of the United States?",
    options: [
      const NavigationsOption(text: "George Washington", isCorrect: true),
      const NavigationsOption(text: "Abraham Lincoln", isCorrect: false),
      const NavigationsOption(text: "Thomas Jefferson", isCorrect: false),
      const NavigationsOption(text: "John Adams", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const NavigationsOption(text: "George Washington", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What was the significance of the Declaration of Independence?",
    options: [
      const NavigationsOption(text: "It declared the American colonies' independence from Britain", isCorrect: true),
      const NavigationsOption(text: "It ended the American Civil War", isCorrect: false),
      const NavigationsOption(text: "It abolished slavery", isCorrect: false),
      const NavigationsOption(text: "It established the U.S. Constitution", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const NavigationsOption(text: "It declared the American colonies' independence from Britain", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What are the three branches of the U.S. government?",
    options: [
      const NavigationsOption(text: "Legislative, Executive, Judicial", isCorrect: true),
      const NavigationsOption(text: "Federal, State, Local", isCorrect: false),
      const NavigationsOption(text: "Military, Diplomatic, Economic", isCorrect: false),
      const NavigationsOption(text: "President, Congress, Supreme Court", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const NavigationsOption(text: "Legislative, Executive, Judicial", isCorrect: true),
  ),
  NavigateQuestion(
    text: "Who was Martin Luther King Jr.?",
    options: [
      const NavigationsOption(text: "A leader of the Civil Rights Movement", isCorrect: true),
      const NavigationsOption(text: "The 16th President of the United States", isCorrect: false),
      const NavigationsOption(text: "An inventor", isCorrect: false),
      const NavigationsOption(text: "A famous scientist", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const NavigationsOption(text: "A leader of the Civil Rights Movement", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What was the Underground Railroad?",
    options: [
      const NavigationsOption(text: "A network of secret routes and safe houses for enslaved people escaping to freedom", isCorrect: true),
      const NavigationsOption(text: "A subway system", isCorrect: false),
      const NavigationsOption(text: "A type of railway for transporting goods", isCorrect: false),
      const NavigationsOption(text: "A communication network", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const NavigationsOption(text: "A network of secret routes and safe houses for enslaved people escaping to freedom", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What was the American Civil War about?",
    options: [
      const NavigationsOption(text: "A conflict between the Northern and Southern states over slavery and states' rights", isCorrect: true),
      const NavigationsOption(text: "A war between the U.S. and Britain", isCorrect: false),
      const NavigationsOption(text: "A conflict with Native Americans", isCorrect: false),
      const NavigationsOption(text: "A war over territory with Mexico", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const NavigationsOption(text: "A conflict between the Northern and Southern states over slavery and states' rights", isCorrect: true),
  ),
  NavigateQuestion(
    text: "Who were the ancient Egyptians?",
    options: [
      const NavigationsOption(text: "An ancient civilization known for building pyramids and hieroglyphic writing", isCorrect: true),
      const NavigationsOption(text: "A nomadic tribe in Asia", isCorrect: false),
      const NavigationsOption(text: "A group of explorers in the Arctic", isCorrect: false),
      const NavigationsOption(text: "A medieval European kingdom", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const NavigationsOption(text: "An ancient civilization known for building pyramids and hieroglyphic writing", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What was the purpose of the Great Wall of China?",
    options: [
      const NavigationsOption(text: "To protect China from invasions", isCorrect: true),
      const NavigationsOption(text: "To mark the border between China and India", isCorrect: false),
      const NavigationsOption(text: "To serve as a trade route", isCorrect: false),
      const NavigationsOption(text: "To store water for irrigation", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const NavigationsOption(text: "To protect China from invasions", isCorrect: true),
  ),
  NavigateQuestion(
    text: "Who were the Native Americans?",
    options: [
      const NavigationsOption(text: "The original inhabitants of the Americas before European colonization", isCorrect: true),
      const NavigationsOption(text: "Immigrants from Europe", isCorrect: false),
      const NavigationsOption(text: "Settlers from Asia", isCorrect: false),
      const NavigationsOption(text: "Explorers from Africa", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const NavigationsOption(text: "The original inhabitants of the Americas before European colonization", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What was the significance of the Boston Tea Party?",
    options: [
      const NavigationsOption(text: "A protest against British taxes on tea, leading to the American Revolution", isCorrect: true),
      const NavigationsOption(text: "A celebration of a trade agreement with Britain", isCorrect: false),
      const NavigationsOption(text: "The signing of the Declaration of Independence", isCorrect: false),
      const NavigationsOption(text: "The end of the American Civil War", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const NavigationsOption(text: "A protest against British taxes on tea, leading to the American Revolution", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What were the pyramids used for?",
    options: [
      const NavigationsOption(text: "Tombs for pharaohs and important figures in ancient Egypt", isCorrect: true),
      const NavigationsOption(text: "Storage buildings for grain", isCorrect: false),
      const NavigationsOption(text: "Temples for worship", isCorrect: false),
      const NavigationsOption(text: "Homes for ancient Egyptian families", isCorrect: false),
    ],
    id: 10,
    correctAnswer: const NavigationsOption(text: "Tombs for pharaohs and important figures in ancient Egypt", isCorrect: true),
  ),
  NavigateQuestion(
    text: "Who was George Washington Carver?",
    options: [
      const NavigationsOption(text: "An African American scientist and inventor who developed many uses for peanuts", isCorrect: true),
      const NavigationsOption(text: "The first President of the United States", isCorrect: false),
      const NavigationsOption(text: "A famous author", isCorrect: false),
      const NavigationsOption(text: "A civil rights leader", isCorrect: false),
    ],
    id: 11,
    correctAnswer: const NavigationsOption(text: "An African American scientist and inventor who developed many uses for peanuts", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What was the Industrial Revolution?",
    options: [
      const NavigationsOption(text: "A period of rapid industrial growth and technological innovation in the 18th and 19th centuries", isCorrect: true),
      const NavigationsOption(text: "The discovery of the Americas", isCorrect: false),
      const NavigationsOption(text: "The development of agriculture", isCorrect: false),
      const NavigationsOption(text: "The colonization of Africa", isCorrect: false),
    ],
    id: 12,
    correctAnswer: const NavigationsOption(text: "A period of rapid industrial growth and technological innovation in the 18th and 19th centuries", isCorrect: true),
  ),
  NavigateQuestion(
    text: "Who were the Wright brothers?",
    options: [
      const NavigationsOption(text: "The inventors of the first successful airplane", isCorrect: true),
      const NavigationsOption(text: "Pioneers of the steam engine", isCorrect: false),
      const NavigationsOption(text: "Leaders in the Civil Rights Movement", isCorrect: false),
      const NavigationsOption(text: "Famous artists", isCorrect: false),
    ],
    id: 13,
    correctAnswer: const NavigationsOption(text: "The inventors of the first successful airplane", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What was the Oregon Trail?",
    options: [
      const NavigationsOption(text: "A historic route used by pioneers traveling to the western United States", isCorrect: true),
      const NavigationsOption(text: "A path used by Native Americans for trade", isCorrect: false),
      const NavigationsOption(text: "A military route during the Civil War", isCorrect: false),
      const NavigationsOption(text: "A trail used for cattle drives", isCorrect: false),
    ],
    id: 14,
    correctAnswer: const NavigationsOption(text: "A historic route used by pioneers traveling to the western United States", isCorrect: true),
  ),
];