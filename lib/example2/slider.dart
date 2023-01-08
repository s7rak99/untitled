import 'package:flutter/material.dart';

class SliderEx extends StatefulWidget {
  const SliderEx({Key? key}) : super(key: key);

  @override
  State<SliderEx> createState() => _SliderExState();
}

class _SliderExState extends State<SliderEx> {
  var x=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [

          Slider(
            activeColor: Colors.green,
              inactiveColor: Colors.yellow,

              min: 0,
              max: 100,
              value: x,
              onChanged: (val) {
               setState(() {
                 x = val;
                 print(x);
               });
              })],
      ),
    );
  }
}
