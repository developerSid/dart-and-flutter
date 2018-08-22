import 'dart:html';
import 'dart:async';

void main(){
  final ButtonElement button = querySelector('button');
  
  button.onClick
    .timeout(
    	Duration(seconds: 1),
      onTimeout: (sink) => sink.addError('You lost!!!')
  	);
}

