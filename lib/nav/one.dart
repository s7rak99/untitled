import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page One')),
      body: Column(
        children: [
          const Text(
            'Page One',
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.pop(context);
                }
                //Navigator.of(context).pop();
              },
              child: const Text('back')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('home');
                // if (Navigator.of(context).canPop()) {
                //   Navigator.pop(context);
                // }
                //Navigator.of(context).pop();
              },
              child: const Text('Replace'))
        ],
      ),
    );
  }
}
