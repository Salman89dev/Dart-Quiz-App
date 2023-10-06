import 'dart:io';
import 'dart:math';

class Quiz {
  var questions = {
    '1': 'What is the capital of France?',
    '2': 'Who wrote "Romeo and Juliet"?',
    '3': 'Pakistan Flags Color?',
    '4': 'What is the capital of Japan?',
    '5': 'Which planet is known as the Red Planet?',
    '6': 'What is the largest mammal in the world?',
    '7': 'Who wrote "Romeo and Juliet"?',
    '8': 'Pakistan Cricket Team Captain Name?"?',
    '9': 'What is the powerhouse of the cell?',
    '10': 'In which year did the Titanic sink?',
    '11': 'What is the currency of Germany?',
    '12': 'What is the square root of 64?',
    '13': 'Who painted the Mona Lisa?',
    '14': 'What is the tallest mountain in the world?',
    '15': 'Which gas do plants absorb from the atmosphere?',
    '16': 'What is the largest ocean on Earth?',
    '17': 'Who is the author of "To Kill a Mockingbird"?',
    '18': 'What is the largest desert in the world?',
    '19': 'What is the chemical symbol for gold?',
    '20': 'How many continents are there? ',
    // Add more questions here
  };

  var answers = {
    '1': 'Paris',
    '2': 'William Shakespeare',
    '3': 'Green',
    '4': 'Tokyo',
    '5': 'Mars',
    '6': 'Blue Whale',
    '7': 'William Shakespeare',
    '8': 'Baber Azam',
    '9': 'Mitochondria',
    '10': '1912',
    '11': 'Euro',
    '12': '8',
    '13': 'Leonardo da Vinci',
    '14': 'Mount Everes',
    '15': 'Carbon Dioxide',
    '16': 'Pacific Ocean',
    '17': 'Harper Lee',
    '18': 'Antarctica',
    '19': 'au',
    '20': '7',
  };

  int totalQuestions;
  int correctAnswers = 0;

  Quiz(this.totalQuestions);

  void startQuiz() {
    List<String> randList = generateRandomQuestionNumbers();
    
    for (var questionNumber in randList) {
      print('Question: ${questions[questionNumber]}');
      String userAnswer = getUserAnswer();
      checkAnswer(questionNumber, userAnswer);
    }

    showFinalResult();
  }

  List<String> generateRandomQuestionNumbers() {
    List<String> randList = List<String>.generate(totalQuestions, (index) {
      int randomNumber = Random().nextInt(questions.length) + 1;
      return randomNumber.toString();
    });

    return randList;
  }

  String getUserAnswer() {
    stdout.write('Your answer: ');
    return stdin.readLineSync() ?? '';
  }

  void checkAnswer(String questionNumber, String userAnswer) {
    if (answers[questionNumber]?.toLowerCase() == userAnswer.toLowerCase()) {
      correctAnswers++;
    }
  }

  void showFinalResult() {
    double percentage = (correctAnswers / totalQuestions) * 100;
    print('\n--- Quiz Completed ---');
    print('Total Correct Answers: $correctAnswers/$totalQuestions');
    print('Percentage: $percentage%');

    if (percentage > 50) {
      print('Congratulations! You did well.');
    } else {
      print('Keep practicing. You can do better!');
    }

    askToRestart();
  }

  void askToRestart() {
    stdout.write('Do you want to restart the quiz? (yes/no): ');
    String restartAnswer = stdin.readLineSync()?.toLowerCase() ?? '';

    if (restartAnswer == 'yes') {
      resetQuiz();
      startQuiz();
    } else {
      print('Thank you for playing the quiz!');
    }
  }

  void resetQuiz() {
    correctAnswers = 0;
  }
}

void main() {
  print('Welcome to the Quiz App!\n');
  print('Instructions: Answer the questions and see your final score.\n');

  // Set the number of questions you want in the quiz
  int totalQuestions = 20;

  Quiz quiz = Quiz(totalQuestions);
  quiz.startQuiz();
}