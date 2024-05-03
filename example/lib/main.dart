import 'package:flutter/material.dart';
import 'package:supercontext/supercontext.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Example")),
      body: Center(
        child: Column(
          children: [
            Visibility(
              visible: title.isNull,
              child: const Text("Title si null"),
            ),
            Visibility(
              visible: title.isNotNull,
              child: Text(title!),
            ),
            FilledButton(
              onPressed: () {
                setState(() {
                  title = title.isNull ? "Title is no null" : null;
                });
              },
              child: const Text("Change title status"),
            ),
          ],
        ),
      ),
    );
  }
}
