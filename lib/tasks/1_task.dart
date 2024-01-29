import 'dart:math';

class DelimetersCalculator {
  static List<int> getPrimeFactorsOf(int n) {
    List<int> factors = [];

    while (n % 2 == 0) {
      factors.add(2);
      n = n ~/ 2;
    }

    for (int i = 3; i <= sqrt(n).ceil(); i += 2) {
      while (n % i == 0) {
        factors.add(i);
        n = n ~/ i;
      }
    }

    if (n > 2) {
      factors.add(n);
    }

    return factors;
  }

  static int gcd(int a, int b) {
    while (b != 0) {
      int remainder = a % b;
      a = b;
      b = remainder;
    }
    return a;
  }

  static int lcm(int a, int b) {
    return (a * b) ~/ gcd(a, b);
  }
}