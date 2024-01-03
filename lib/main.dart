import 'package:event_concert_app/presentation/views/concerts_view.dart';
import 'package:event_concert_app/presentation/views/detail_view.dart';
import 'package:event_concert_app/presentation/views/event_view.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EventView(),
    );
  }
}
