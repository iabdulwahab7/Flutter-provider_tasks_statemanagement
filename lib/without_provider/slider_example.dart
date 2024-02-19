import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double value = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            min: 0,
            max: 1,
            value: value,
            onChanged: (val) {
              value = val;
              setState(() {});
            },
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.green.withOpacity(value)),
                  height: 100,
                  child: const Center(child: Text('Container')),
                ),
              ),
              Expanded(
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.blue.withOpacity(value)),
                  height: 100,
                  child: const Center(child: Text('Container')),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
