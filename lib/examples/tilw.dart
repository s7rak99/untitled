import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListTileExample extends StatefulWidget {
  const ListTileExample({Key? key}) : super(key: key);

  @override
  State<ListTileExample> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fazeal Team'),
        backgroundColor: Colors.green,
      ),
      drawer: const Drawer(),
      body: Container(
        //color: Colors.white,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(10.0),
        child:  ListTile(
          title: const Text('Iphone 14 pro max'),
          subtitle:const Text('Apple'),
          leading: const Icon(Icons.apple),
          trailing: const Text('1200 JD'),

          onTap: (){
            if (kDebugMode) {
              print('iphone 14');
            }
          },
          onLongPress: (){},
          //tileColor: Colors.grey,

        ),
      ),
    );
  }
}
