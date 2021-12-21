import 'package:flutter/material.dart';
import 'features/controller.dart';
import 'features/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      initialData: controller.value,
      stream: controller.streamController.stream,
      builder: (context, snapshot) => MaterialApp(
        themeMode: snapshot.data! ? ThemeMode.dark : ThemeMode.light,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: View(),
      ),
    );
  }
}
