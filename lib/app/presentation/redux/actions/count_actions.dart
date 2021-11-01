import 'package:redux/redux.dart';

enum CountActions {
  increment,
}

Future<void> countIncrementAction(Store<int> store) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    store.dispatch(store.state + 1);
}
