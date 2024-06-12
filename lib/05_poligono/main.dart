abstract class Polygon {
  double area();
}

class Triangle extends Polygon {
  final double baseTriangle;
  final double height;

  Triangle(this.baseTriangle, this.height);

  @override
  double area() {
    return baseTriangle * height / 2;
  }
}

class Square extends Polygon {
  final double baseSquare;

  Square(this.baseSquare);

  @override
  double area() {
    return baseSquare * baseSquare;
  }
}

class Rectangle extends Polygon {
  final double baseRectagle;
  final double height;

  Rectangle(this.baseRectagle, this.height);

  @override
  double area() {
    return baseRectagle * height;
  }
}

void main() {
  print('Area de un triangulo de 4 x 3: ${Triangle(4, 3).area()}');
  print('Area de un cuadrado de 4 x 4: ${Square(4).area()}');
  print('Area de un rectangulo de 4 x 3: ${Rectangle(4, 3).area()}');
}
