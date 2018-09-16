import 'dart:async';

void main() {
  final bloc = Bloc();
  
  bloc.email.listen((value) {
    print(value);
  });
  
  bloc.changeEmail('My new email');
}

class Bloc {
  final emailController = StreamController<String>();
  
  // Add data to stream
  get changeEmail => emailController.sink.add;
  
  // Retrieve data from stream
  Stream<String> get email => emailController.stream;
}

