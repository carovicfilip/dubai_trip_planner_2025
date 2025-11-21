class OnboardingQuestion {
  final String question;
  final String? subtitle;
  final List<OnboardingAnswer> answers;
  final int stepNumber;

  OnboardingQuestion({
    required this.question,
    this.subtitle,
    required this.answers,
    required this.stepNumber,
  });
}

class OnboardingAnswer {
  final String text;
  final String value;

  OnboardingAnswer({
    required this.text,
    required this.value,
  });
}

