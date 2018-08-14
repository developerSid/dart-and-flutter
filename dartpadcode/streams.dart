import 'dart:async';

class Cake {}

class Order {
  String type;
  
  Order(this.type);
}

void main() {
  final controller = StreamController();
  
  final order = Order('banana');
  
  controller.sink.add(order);
}

