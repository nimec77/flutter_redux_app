import 'package:flutter_redux_app/app/presentation/redux/reducers/count_reducer.dart';
import 'package:redux/redux.dart';

class CountStore {
  Store<int> call() {
    return Store<int>(CountReducer(), initialState: 0);
  }
}
