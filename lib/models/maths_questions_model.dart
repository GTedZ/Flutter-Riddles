import 'dart:math';

class StateQuestion {
  final int id;
  final String text;
  final List<StateOption> options;
  bool isLocked;
  StateOption? selectedWiidgetOption;
  StateOption? correctAnswer;

  StateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  StateQuestion copyWith() {
    List<StateOption> shuffledOptions = List.from(options);
    shuffledOptions.shuffle(Random());
    
    
    return StateQuestion(
      id: id,
      text: text,
      options: shuffledOptions,
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class StateOption {
  final String text;
  final bool isCorrect;

  const StateOption({
    required this.text,
    required this.isCorrect,
  });
}

final mathsQuestionList = [
  StateQuestion(
    text: "What is the place value of the digit 7 in the number 4,782?",
    options: [
      const StateOption(text: "Hundreds", isCorrect: true),
      const StateOption(text: "Thousands", isCorrect: false),
      const StateOption(text: "Tens", isCorrect: false),
      const StateOption(text: "Units", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const StateOption(text: "Hundreds", isCorrect: true),
  ),
  StateQuestion(
    text: "How do you find the perimeter of a rectangle?",
    options: [
      const StateOption(
          text: "Add up the lengths of all the sides", isCorrect: true),
      const StateOption(
          text: "Multiply the length by the width", isCorrect: false),
      const StateOption(
          text: "Subtract the length from the width", isCorrect: false),
      const StateOption(
          text: "Divide the length by the width", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const StateOption(
        text: "Add up the lengths of all the sides", isCorrect: true),
  ),
  StateQuestion(
    text: "What is a fraction?",
    options: [
      const StateOption(text: "A part of a whole", isCorrect: true),
      const StateOption(text: "A whole number", isCorrect: false),
      const StateOption(text: "A decimal number", isCorrect: false),
      const StateOption(text: "A type of shape", isCorrect: false),
    ],
    id: 2,
    correctAnswer:
        const StateOption(text: "A part of a whole", isCorrect: true),
  ),
  StateQuestion(
    text: "How do you add two fractions?",
    options: [
      const StateOption(
          text: "Find a common denominator, then add the numerators",
          isCorrect: true),
      const StateOption(
          text: "Add the numerators and denominators separately",
          isCorrect: false),
      const StateOption(
          text: "Multiply the numerators and denominators", isCorrect: false),
      const StateOption(
          text: "Subtract the numerators from the denominators",
          isCorrect: false),
    ],
    id: 3,
    correctAnswer: const StateOption(
        text: "Find a common denominator, then add the numerators",
        isCorrect: true),
  ),
  StateQuestion(
    text: "What is the difference between area and perimeter?",
    options: [
      const StateOption(
          text:
              "Area measures surface space, perimeter measures the distance around",
          isCorrect: true),
      const StateOption(
          text: "Area measures distance, perimeter measures volume",
          isCorrect: false),
      const StateOption(
          text: "Area measures weight, perimeter measures height",
          isCorrect: false),
      const StateOption(
          text: "Area measures length, perimeter measures width",
          isCorrect: false),
    ],
    id: 4,
    correctAnswer: const StateOption(
        text:
            "Area measures surface space, perimeter measures the distance around",
        isCorrect: true),
  ),
  StateQuestion(
    text: "What is a prime number?",
    options: [
      const StateOption(
          text: "A number that has only two factors: 1 and itself",
          isCorrect: true),
      const StateOption(
          text: "A number that is a multiple of 10", isCorrect: false),
      const StateOption(
          text: "A number that has more than two factors", isCorrect: false),
      const StateOption(text: "A number that is even", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const StateOption(
        text: "A number that has only two factors: 1 and itself",
        isCorrect: true),
  ),
  StateQuestion(
    text: "How do you multiply two-digit numbers?",
    options: [
      const StateOption(text: "Use the distributive property", isCorrect: true),
      const StateOption(text: "Add the numbers", isCorrect: false),
      const StateOption(text: "Divide the numbers", isCorrect: false),
      const StateOption(text: "Subtract the numbers", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const StateOption(
        text: "Use the distributive property", isCorrect: true),
  ),
  StateQuestion(
    text: "What is the order of operations in math?",
    options: [
      const StateOption(
          text:
              "Parentheses, Exponents, Multiplication and Division, Addition and Subtraction",
          isCorrect: true),
      const StateOption(
          text: "Addition, Subtraction, Multiplication, Division",
          isCorrect: false),
      const StateOption(
          text: "Multiplication, Division, Addition, Subtraction",
          isCorrect: false),
      const StateOption(
          text: "Subtraction, Addition, Multiplication, Division",
          isCorrect: false),
    ],
    id: 7,
    correctAnswer: const StateOption(
        text:
            "Parentheses, Exponents, Multiplication and Division, Addition and Subtraction",
        isCorrect: true),
  ),
  StateQuestion(
    text: "How do you convert a decimal to a fraction?",
    options: [
      const StateOption(
          text:
              "Write the decimal as a fraction with a denominator of 10, 100, 1000, etc.",
          isCorrect: true),
      const StateOption(
          text: "Add the decimal to a whole number", isCorrect: false),
      const StateOption(text: "Multiply the decimal by 100", isCorrect: false),
      const StateOption(
          text: "Divide the decimal by a whole number", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const StateOption(
        text:
            "Write the decimal as a fraction with a denominator of 10, 100, 1000, etc.",
        isCorrect: true),
  ),
  StateQuestion(
    text: "What is a symmetrical shape?",
    options: [
      const StateOption(
          text: "A shape that can be divided into two identical parts",
          isCorrect: true),
      const StateOption(
          text: "A shape with all sides of different lengths",
          isCorrect: false),
      const StateOption(text: "A shape with no angles", isCorrect: false),
      const StateOption(text: "A shape with only one side", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const StateOption(
        text: "A shape that can be divided into two identical parts",
        isCorrect: true),
  ),
  StateQuestion(
    text: "How do you find the volume of a cube?",
    options: [
      const StateOption(
          text: "Multiply the length of one side by itself three times",
          isCorrect: true),
      const StateOption(text: "Add the lengths of all sides", isCorrect: false),
      const StateOption(
          text: "Divide the length by the width", isCorrect: false),
      const StateOption(
          text: "Subtract the width from the height", isCorrect: false),
    ],
    id: 10,
    correctAnswer: const StateOption(
        text: "Multiply the length of one side by itself three times",
        isCorrect: true),
  ),
  StateQuestion(
    text: "What is a right angle?",
    options: [
      const StateOption(text: "An angle of 90 degrees", isCorrect: true),
      const StateOption(text: "An angle of 45 degrees", isCorrect: false),
      const StateOption(text: "An angle of 180 degrees", isCorrect: false),
      const StateOption(text: "An angle of 360 degrees", isCorrect: false),
    ],
    id: 11,
    correctAnswer:
        const StateOption(text: "An angle of 90 degrees", isCorrect: true),
  ),
  StateQuestion(
    text: "How do you divide a number by 10?",
    options: [
      const StateOption(
          text: "Move the decimal point one place to the left",
          isCorrect: true),
      const StateOption(
          text: "Move the decimal point one place to the right",
          isCorrect: false),
      const StateOption(text: "Add 10 to the number", isCorrect: false),
      const StateOption(text: "Subtract 10 from the number", isCorrect: false),
    ],
    id: 12,
    correctAnswer: const StateOption(
        text: "Move the decimal point one place to the left", isCorrect: true),
  ),
  StateQuestion(
    text: "What are the properties of an equilateral triangle?",
    options: [
      const StateOption(
          text: "All sides and angles are equal", isCorrect: true),
      const StateOption(
          text: "Only one side is equal to another", isCorrect: false),
      const StateOption(text: "All angles are right angles", isCorrect: false),
      const StateOption(
          text: "All sides are different lengths", isCorrect: false),
    ],
    id: 13,
    correctAnswer: const StateOption(
        text: "All sides and angles are equal", isCorrect: true),
  ),
  StateQuestion(
    text: "How do you solve for the unknown in the equation 3x = 12?",
    options: [
      const StateOption(text: "Divide both sides by 3", isCorrect: true),
      const StateOption(text: "Multiply both sides by 3", isCorrect: false),
      const StateOption(text: "Subtract 3 from both sides", isCorrect: false),
      const StateOption(text: "Add 3 to both sides", isCorrect: false),
    ],
    id: 14,
    correctAnswer:
        const StateOption(text: "Divide both sides by 3", isCorrect: true),
  ),
];
