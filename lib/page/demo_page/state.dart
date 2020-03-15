import 'package:fish_redux/fish_redux.dart';

class DemoState implements Cloneable<DemoState> {
  DemoState({this.counter});

  int counter;

  @override
  DemoState clone() {
    return DemoState()..counter = counter;
  }
}

DemoState initState(Map<String, dynamic> args) {
  print('state initState');
  return DemoState(counter: 0);
}
