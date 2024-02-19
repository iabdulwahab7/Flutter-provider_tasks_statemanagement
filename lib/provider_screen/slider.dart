import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/provider/slider_provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(builder: (context, value, child) {
            //sliderProvider.value here we take value of the consumer as a sliderProvider
            return Slider(
              min: 0,
              max: 1,
              value: value.value,
              onChanged: (val) {
                value.setValue(val);
              },
            );
          }),
          Consumer<SliderProvider>(builder: (context, value, child) {
            //sliderProvider.value here we take value of the consumer as a sliderProvider
            return Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.value)),
                    height: 100,
                    child: const Center(child: Text('Container')),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(value.value)),
                    height: 100,
                    child: const Center(child: Text('Container')),
                  ),
                )
              ],
            );
          }),
        ],
      ),
    );
  }
}
