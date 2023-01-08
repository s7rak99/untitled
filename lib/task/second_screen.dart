import 'package:flutter/material.dart';
import 'package:untitled/task/resource.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreen();
}

class _SecondScreen extends State<SecondScreen> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 51, 89),
      key: globalKey,
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Text('+', style: TextStyle(fontSize: 30),),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 30, right: 25),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.sort, size: 35),
                    color: Colors.white,
                    onPressed: () {
                      globalKey.currentState!.openDrawer();
                    },
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const Text(
                    'Scenes',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.cloud_upload_outlined, size: 35),
                    color: Colors.white,
                    onPressed: () {
                      globalKey.currentState!.openDrawer();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.bar_chart, size: 35),
                    color: Colors.white,
                    onPressed: () {
                      globalKey.currentState!.openDrawer();
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 600,
              padding: const EdgeInsets.all(25.0),
              child: ListView.separated(
                itemCount: ResourceTask.item.length,
                itemBuilder: (BuildContext context, int index) {
                  return ResourceTask.item[index];
                }, separatorBuilder: (BuildContext context, int index) { return Divider(height: 15,); },
              ),
            )
          ],
        ),
      ),
    );
  }
}

