import 'package:redux/redux.dart';

class CountReducer extends ReducerClass<int> {
  @override
  int call(int state, dynamic action) {
    if (action is int) {
      return action;
    }
    return state;
  }
}

