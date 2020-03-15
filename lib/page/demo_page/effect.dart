import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<DemoState> buildEffect() {
  return combineEffects(<Object, Effect<DemoState>>{
    Lifecycle.initState: _onInit,
  });
}

void _onInit(Action action, Context<DemoState> ctx) {
  print("On Init Effect");
}
