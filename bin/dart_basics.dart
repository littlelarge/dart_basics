import 'package:dart_basics/tasks/1_task.dart';
import 'package:dart_basics/tasks/2_task.dart';
import 'package:dart_basics/tasks/3_task.dart';
import 'package:dart_basics/tasks/4_task.dart';
import 'package:dart_basics/tasks/5_task.dart';
import 'package:dart_basics/tasks/6_task.dart';
import 'package:dart_basics/tasks/7_task.dart';
import 'package:dart_basics/tasks/8_task.dart';

void main() {
  print('');
  printFirstTask();
  printSecondTask();
  printThirdTask();
  printFourthTask();
  printFifthTask();
  printSixthTask();
  printSeventhTask();
  printEighthTask();
}

void printFirstTask() {
  // first
  
  print('--- first task --- ');
  print('');

  print('prime factors of 72: ${DelimetersCalculator.getPrimeFactorsOf(72)}');
  print('gcd of 72 and 92: ${DelimetersCalculator.gcd(72, 92)}');
  print('lcm of 48 and 18: ${DelimetersCalculator.lcm(48, 18)}');

  print('');
}

void printSecondTask() {
  // second

  print('--- second task --- ');
  print('');

  print('decimal to binary: ${Converting.decimalToBinary(26)}');
  print(
      'binary to decimal: ${Converting.binaryToDecimal(Converting.decimalToBinary(26))}');

  print('');
}

void printThirdTask() {
  // third

  print('--- third task --- ');
  print('');

  print(
      'numbers from string: ${StringNumbersExtractor.extractNumbersFromString('str 2 45 95 sf 34 l numb2')}');

  print('');
}

void printFourthTask() {
  // fourth

  print('--- fourth task --- ');
  print('');

  print('count of words: ${WordCounter.calculateWordCount([
        'list',
        'list1',
        'list',
        'collection',
        'list'
      ])}');

  print('');
}

void printFifthTask() {
  // fifth

  print('--- fifth task --- ');
  print('');

  print('nums from words: ${WordNumberConverter.convertWordsToNumbers([
        'one',
        'TWO',
        'doG',
        'TwO',
        'zero',
        'zero',
        'zero',
        'foUr',
        'tEN',
        'CAT'
      ])}');

  print('');
}

void printSixthTask() {
  // sixth

  print('--- sixth task --- ');
  print('');

  final Point point = Point(7, 4, 3);
  print('distance: ${point.distanceTo(Point(17, 6, 2))}');
  print(
      'area of triangle: ${Point.getAreaOfTriangle(Point(170, 0, 2), Point(5, 4, 6), Point(6, 2, 6))}');

  print('');
}

void printSeventhTask() {
  // seventh

  print('--- seventh task --- ');
  print('');

  print('4th root of .0016: ${.0016.nthRoot(4)}');

  print('');
}

void printEighthTask() {
  // eighth

  print('--- eighth task --- ');
  print('');

  UserManager userManager = UserManager();

  GeneralUser gUser1 = GeneralUser(email: 'general1@user.system');
  AdminUser aUsesr1 = AdminUser(email: 'admin1@admin.system');
  GeneralUser gUser2 = GeneralUser(email: 'general2@user.system');
  AdminUser aUsesr2 = AdminUser(email: 'admin2@admin.system');
  GeneralUser gUser3 = GeneralUser(email: 'general3@user.system');
  AdminUser aUsesr3 = AdminUser(email: 'admin3@admin.system');

  userManager.addUser(gUser1);
  userManager.addUser(aUsesr1);
  userManager.addUser(gUser2);
  userManager.addUser(aUsesr2);
  userManager.addUser(gUser3);
  userManager.addUser(aUsesr3);

  print('');

  userManager.removeUser(gUser3);

  print('');

  userManager.printUsersEmails();

  print('');
}
