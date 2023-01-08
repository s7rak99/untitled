import 'package:flutter/material.dart';

class BottomSheetEx extends StatefulWidget {
  const BottomSheetEx({Key? key}) : super(key: key);

  @override
  State<BottomSheetEx> createState() => _BottomSheetExState();
}

class _BottomSheetExState extends State<BottomSheetEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom sheet'),),
      body:  Center(
        child: ElevatedButton(
          onPressed: () {
           showModalBottomSheet(context: context, builder: (context){
             return const SizedBox(height: 100,child: Text('Bottom sheet'),);

           });
          },
          child: const Text('show'),
        ),
      ),
    );
  }
}
