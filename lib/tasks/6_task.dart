import 'dart:math';

class Point {
  final double x, y, z;

  Point(
    this.x,
    this.y,
    this.z,
  );

  double distanceTo(Point another) {
    return sqrt(
        pow(another.x - x, 2) + pow(another.y - y, 2) + pow(another.z - z, 2));
  }

  static double getAreaOfTriangle(Point a, Point b, Point c) {
    return 1 /
        2 *
        ((b.x - a.x) * (c.y - a.y) - (c.x - a.x) * (b.y - a.y)).abs();
  }

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.unit() {
    return Point(1, 1, 1);
  }
}