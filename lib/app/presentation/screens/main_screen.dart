import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_app/app/presentation/redux/actions/count_actions.dart';
import 'package:redux/redux.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.countStore}) : super(key: key);

  final Store<int> countStore;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<int>(
      store: countStore,
      child: MaterialApp(
        theme: ThemeData.dark(),
        title: 'Redux App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Redux App'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StoreConnector<int, String>(
                  converter: (store) => store.state.toString(),
                  builder: (context, count) {
                    return Text(
                      'The button has been pushed this many times: $count',
                      style: Theme.of(context).textTheme.headline6,
                    );
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: StoreConnector<int, VoidCallback>(
            converter: (store) {
              return () => store.dispatch(countIncrementAction);
            },
            builder: (context, callback) {
              return FloatingActionButton(
                onPressed: callback,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              );
            },
          ),
        ),
      ),
    );
  }
}
