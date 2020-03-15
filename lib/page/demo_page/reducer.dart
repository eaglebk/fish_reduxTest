import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<DemoState> buildReducer() {
  return asReducer(
    <Object, Reducer<DemoState>>{
      DemoAction.plus: _onChangePlus,
      DemoAction.minus: _onChangeMinus,
    },
  );
}

DemoState _onChangePlus(DemoState state, Action action) {
  var str = action.payload;
  final DemoState newState = state.clone()..counter += 1;
  return newState;
}

DemoState _onChangeMinus(DemoState state, Action action) {
  var str = action.payload;
  final DemoState newState = state.clone()..counter -= 1;
  return newState;
}
