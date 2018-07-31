import 'dart:async';

main () async {
  print('About to fetch some data');
  get('http://laksdjflakjsf', 1).then((result) {
    print(result);
  });
  
  print('About to fetch some data again');
  final result = await get('http://laksdjflakjsf', 2);
  
  print(result);
}

Future<String> get(String url, int call) {
  return Future.delayed(Duration(seconds: 3), () { return 'Got the data! $call'; });
}

