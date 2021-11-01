import 'package:flutter/material.dart';
import 'package:flutter_redux_app/app/presentation/redux/storages/count_store.dart';
import 'package:flutter_redux_app/app/presentation/screens/main_screen.dart';
import 'package:redux/redux.dart';

void main() {
  final countStore = CountStore()();

  runApp(MyApp(countStore: countStore));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.countStore}) : super(key: key);

  final Store<int> countStore;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(countStore: countStore),
    );
  }
}
