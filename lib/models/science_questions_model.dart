import 'dart:math';

class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  LayOutQuestion copyWith() {
    List<LayOutOption> shuffledOptions = List.from(options);
    shuffledOptions.shuffle(Random());
    
    return LayOutQuestion(
      id: id,
      text: text,
      options: shuffledOptions,
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final scienceQuestionList = [
  LayOutQuestion(
    text: "What are the three states of matter?",
    options: [
      const LayOutOption(text: "Solid, Liquid, Gas", isCorrect: true),
      const LayOutOption(text: "Solid, Liquid, Plasma", isCorrect: false),
      const LayOutOption(text: "Liquid, Gas, Plasma", isCorrect: false),
      const LayOutOption(text: "Solid, Plasma, Vapor", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
        const LayOutOption(text: "Solid, Liquid, Gas", isCorrect: true),
  ),
  LayOutQuestion(
    text: "How do plants make their food?",
    options: [
      const LayOutOption(text: "Photosynthesis", isCorrect: true),
      const LayOutOption(text: "Respiration", isCorrect: false),
      const LayOutOption(text: "Fermentation", isCorrect: false),
      const LayOutOption(text: "Digestion", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const LayOutOption(text: "Photosynthesis", isCorrect: true),
  ),
  LayOutQuestion(
    text: "What is the water cycle?",
    options: [
      const LayOutOption(text: "Evaporation, Condensation, Precipitation", isCorrect: true),
      const LayOutOption(text: "Melting, Freezing, Boiling", isCorrect: false),
      const LayOutOption(text: "Photosynthesis, Respiration, Transpiration", isCorrect: false),
      const LayOutOption(text: "Sublimation, Deposition, Diffusion", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const LayOutOption(text: "Evaporation, Condensation, Precipitation", isCorrect: true),
  ),
  LayOutQuestion(
    text: "Name three planets in our solar system.",
    options: [
      const LayOutOption(text: "Earth, Mars, Jupiter", isCorrect: true),
      const LayOutOption(text: "Earth, Pluto, Eris", isCorrect: false),
      const LayOutOption(text: "Jupiter, Saturn, Haumea", isCorrect: false),
      const LayOutOption(text: "Mars, Neptune, Makemake", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const LayOutOption(text: "Earth, Mars, Jupiter", isCorrect: true),
  ),
  LayOutQuestion(
    text: "What is the function of the heart?",
    options: [
      const LayOutOption(text: "Pump blood throughout the body", isCorrect: true),
      const LayOutOption(text: "Digest food", isCorrect: false),
      const LayOutOption(text: "Filter waste from blood", isCorrect: false),
      const LayOutOption(text: "Control breathing", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const LayOutOption(text: "Pump blood throughout the body", isCorrect: true),
  ),
  LayOutQuestion(
    text: "How do magnets work?",
    options: [
      const LayOutOption(text: "By attracting and repelling certain metals", isCorrect: true),
      const LayOutOption(text: "By absorbing heat", isCorrect: false),
      const LayOutOption(text: "By producing sound", isCorrect: false),
      const LayOutOption(text: "By conducting electricity", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const LayOutOption(text: "By attracting and repelling certain metals", isCorrect: true),
  ),
  LayOutQuestion(
    text: "What is a food chain?",
    options: [
      const LayOutOption(text: "A sequence of organisms where each is eaten by the next one in the chain", isCorrect: true),
      const LayOutOption(text: "A type of habitat for plants", isCorrect: false),
      const LayOutOption(text: "A method of farming", isCorrect: false),
      const LayOutOption(text: "A way to cook food", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const LayOutOption(text: "A sequence of organisms where each is eaten by the next one in the chain", isCorrect: true),
  ),
  LayOutQuestion(
    text: "Why do we have seasons?",
    options: [
      const LayOutOption(text: "Because of the tilt of the Earth's axis", isCorrect: true),
      const LayOutOption(text: "Because the Earth moves closer to the sun", isCorrect: false),
      const LayOutOption(text: "Because the moon blocks sunlight", isCorrect: false),
      const LayOutOption(text: "Because of solar flares", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const LayOutOption(text: "Because of the tilt of the Earth's axis", isCorrect: true),
  ),
  LayOutQuestion(
    text: "What are the layers of the Earth?",
    options: [
      const LayOutOption(text: "Crust, Mantle, Core", isCorrect: true),
      const LayOutOption(text: "Crust, Water, Atmosphere", isCorrect: false),
      const LayOutOption(text: "Rock, Soil, Water", isCorrect: false),
      const LayOutOption(text: "Outer shell, Inner shell, Core", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const LayOutOption(text: "Crust, Mantle, Core", isCorrect: true),
  ),
  LayOutQuestion(
    text: "What is photosynthesis?",
    options: [
      const LayOutOption(text: "The process by which plants make food using sunlight", isCorrect: true),
      const LayOutOption(text: "The way plants absorb water", isCorrect: false),
      const LayOutOption(text: "The way plants reproduce", isCorrect: false),
      const LayOutOption(text: "The way plants breathe", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const LayOutOption(text: "The process by which plants make food using sunlight", isCorrect: true),
  ),
  LayOutQuestion(
    text: "How do animals adapt to their environment?",
    options: [
      const LayOutOption(text: "By developing traits that help them survive", isCorrect: true),
      const LayOutOption(text: "By moving to different places", isCorrect: false),
      const LayOutOption(text: "By changing color every season", isCorrect: false),
      const LayOutOption(text: "By eating different foods every day", isCorrect: false),
    ],
    id: 10,
    correctAnswer: const LayOutOption(text: "By developing traits that help them survive", isCorrect: true),
  ),
  LayOutQuestion(
    text: "What are renewable and non-renewable resources?",
    options: [
      const LayOutOption(text: "Resources that can be replenished naturally and resources that cannot", isCorrect: true),
      const LayOutOption(text: "Resources that are always available and resources that are not", isCorrect: false),
      const LayOutOption(text: "Resources that are expensive and resources that are cheap", isCorrect: false),
      const LayOutOption(text: "Resources used by animals and resources used by humans", isCorrect: false),
    ],
    id: 11,
    correctAnswer: const LayOutOption(text: "Resources that can be replenished naturally and resources that cannot", isCorrect: true),
  ),
  LayOutQuestion(
    text: "What causes day and night?",
    options: [
      const LayOutOption(text: "The rotation of the Earth on its axis", isCorrect: true),
      const LayOutOption(text: "The orbit of the Earth around the sun", isCorrect: false),
      const LayOutOption(text: "The tilt of the Earth's axis", isCorrect: false),
      const LayOutOption(text: "The position of the moon", isCorrect: false),
    ],
    id: 12,
    correctAnswer: const LayOutOption(text: "The rotation of the Earth on its axis", isCorrect: true),
  ),
  LayOutQuestion(
    text: "What is the difference between a herbivore, carnivore, and omnivore?",
    options: [
      const LayOutOption(text: "Herbivores eat plants, carnivores eat meat, and omnivores eat both", isCorrect: true),
      const LayOutOption(text: "Herbivores eat meat, carnivores eat plants, and omnivores eat both", isCorrect: false),
      const LayOutOption(text: "Herbivores eat insects, carnivores eat plants, and omnivores eat meat", isCorrect: false),
      const LayOutOption(text: "Herbivores eat fish, carnivores eat fruits, and omnivores eat vegetables", isCorrect: false),
    ],
    id: 13,
    correctAnswer: const LayOutOption(text: "Herbivores eat plants, carnivores eat meat, and omnivores eat both", isCorrect: true),
  ),
  LayOutQuestion(
    text: "How do birds fly?",
    options: [
      const LayOutOption(text: "By flapping their wings and using air currents", isCorrect: true),
      const LayOutOption(text: "By running fast", isCorrect: false),
      const LayOutOption(text: "By swimming", isCorrect: false),
      const LayOutOption(text: "By jumping high", isCorrect: false),
    ],
    id: 14,
    correctAnswer: const LayOutOption(text: "By flapping their wings and using air currents", isCorrect: true),
  ),
];
