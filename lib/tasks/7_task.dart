extension RootExtension on num {
  num nthRoot(int n) {
    if (this < 0 && n % 2 == 0) {
      throw ArgumentError(
          'Невозможно извлечь четную степень из отрицательного числа');
    }

    num epsilon = 1e-12;
    num x = this.abs();
    num xPrev;

    do {
      xPrev = x;
      x = ((n - 1) * x + this / (x.pow(n - 1))) / n;
    } while ((x - xPrev).abs() > epsilon);

    return x;
  }

  num pow(int n) {
    if (n < 0) {
      throw ArgumentError('Отрицательные показатели степени не поддерживаются');
    }

    num result = 1;
    for (int i = 0; i < n; i++) {
      result *= this;
    }
    return result;
  }
}