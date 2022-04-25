import 'package:flutter/material.dart';
import 'package:scroll_snap_effect/scroll_snap_effect.dart';

void main() {}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const ExamplePage(),
    );
  }
}

class ExamplePage extends StatelessWidget {
  const ExamplePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          width: double.infinity,
          child: ScrollSnapEffect(
            itemSize: 116,
            itemCount: 15,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            onChanged: (index) {
              debugPrint('$index');
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: ColoredBox(
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        '$index',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
