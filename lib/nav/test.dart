import 'package:flutter/material.dart';
import 'package:untitled/nav/one.dart';
import 'package:untitled/nav/three.dart';
import 'package:untitled/nav/two.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Page'),
      ),
      body: Column(
        children: [
          TextFormField(
            onTap: () {},
            decoration: InputDecoration(
                labelText: 'Input Text',
                labelStyle: const TextStyle(fontSize: 16.0),
                hintText: 'Enter any text you want ',
                hintStyle: TextStyle(color: Colors.grey[350]),
                hintMaxLines: 2,
                suffixIcon: const Icon(Icons.text_fields),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(30.0))),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const One();
                }));
              },
              child: const Text('Push By Name')),
          ElevatedButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              },
              child: const Text('One')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('two');
              },
              child: const Text('Two')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('three');
              },
              child: const Text('Three')),
          ElevatedButton(
              onPressed: () {
                print(Navigator.of(context).canPop());
              },
              child: const Text('pop')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('one');
              },
              child: const Text('replace')),
        ],
      ),
    );
  }
}
