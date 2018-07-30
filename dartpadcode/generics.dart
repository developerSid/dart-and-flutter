void main() {
  final circleSlot = Slot<Circle>();
  final squareSlot = Slot<Square>();
  
  circleSlot.insert(Circle());
  squareSlot.insert(Square());
}

class Shape {
  String toString() {
    return "Shape";
  }
}

class Circle extends Shape {
  String toString() {
    return "${super.toString()} Circle";
  }
}
class Square extends Shape {
  String toString() {
    return "${super.toString()} Square";
  }
}

class Slot<T extends Shape> {
  insert(T shape) {
    print("Inserted ${shape.toString()}");
  }
}

