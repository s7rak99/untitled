import 'package:flutter/material.dart';

class Three extends StatelessWidget {
  const Three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Three')),
      body: Column(
        children: [
          const Text('Page Three',style: TextStyle(fontSize: 30),),
          ElevatedButton(onPressed: (){
            if(Navigator.of(context).canPop()) {
              Navigator.pop(context);
            }
            //Navigator.of(context).pop();
          }, child: const Text('back'))
        ],
      ),
    );
  }
}
