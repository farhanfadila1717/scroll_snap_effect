import 'package:flutter/material.dart';
import 'package:scroll_snap_effect/scroll_snap_effect.dart';

void main() {
  runApp(
    const MaterialApp(
      home: ExamplePage(),
    ),
  );
}

class ExamplePage extends StatelessWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("scrollDirection: Axis.horizontal"),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ScrollSnapEffect(
              itemSize: 110,
              itemCount: 10,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: SizedBox.square(
                    dimension: 100,
                    child: ColoredBox(
                      color: Colors.lightBlue,
                    ),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Text("scrollDirection: Axis.vertical"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 100,
              width: 100,
              child: ScrollSnapEffect(
                itemSize: 110,
                itemCount: 10,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: SizedBox.square(
                      dimension: 100,
                      child: ColoredBox(
                        color: Colors.amber,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
