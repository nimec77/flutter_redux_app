import 'package:flutter_redux_app/app/presentation/redux/actions/count_actions.dart';
import 'package:redux/redux.dart';

class CountReducer extends ReducerClass<int> {
  @override
  int call(int state, dynamic action) {
    if (action.runtimeType.toString() != 'CountActions') {
      return state;
    }
    if (action == CountActions.increment) {
      return state + 1;
    }

    return state;
  }
}
