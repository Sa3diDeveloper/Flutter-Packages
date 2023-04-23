import 'package:flutter/material.dart';
import 'package:flutterpackages/packages/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class ProviderExample extends StatefulWidget {
  const ProviderExample({super.key});

  @override
  State<ProviderExample> createState() => _ProviderExampleState();
}

class _ProviderExampleState extends State<ProviderExample> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(provider.counter.toString()),
            SizedBox(
              height: 120,
            ),
            TextButton(
                onPressed: () {
                  provider.increment();
                },
                child: Text("Tap Here"))
          ],
        ),
      ),
    );
  }
}
