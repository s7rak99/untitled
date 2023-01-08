
import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Page Two')),
      body: Column(
        children: [
          const Text('Page Two',style: TextStyle(fontSize: 30),),
          ElevatedButton(onPressed: (){

              Navigator.pop(context);
            //Navigator.of(context).pop();
          }, child: const Text('back'))
        ],
      ),
    );
  }
}
