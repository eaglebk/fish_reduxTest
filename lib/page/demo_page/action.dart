import 'package:fish_redux/fish_redux.dart';

enum DemoAction { plus, minus }

class DemoActionCreator {
  static Action onTapPlus() {
    return Action(
      DemoAction.plus,
    );
  }

  static Action onTapMinus() {
    return Action(
      DemoAction.minus,
    );
  }
}
