import 'package:flutter/material.dart';
import 'package:untitled/task/resource.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {


  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 51, 89),
      key: globalKey,
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                child: Image.asset(
                  'images/rooms1.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 30,
                left: 25,
                child: IconButton(
                  icon: const Icon(Icons.sort, size: 35),
                  color: Colors.white,
                  onPressed: () {
                    globalKey.currentState!.openDrawer();
                  },
                ),
              )
            ]),
            const SizedBox(
              height: 5.0,
            ),
            Container(
                height: 180,
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Favorite devices',
                      style: TextStyle(color: Colors.grey[500], fontSize: 17),
                    ),
                    Flexible(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: ResourceTask.collection.length,
                          itemBuilder: (context, index) {
                            return ResourceTask.collection[index];
                          },
                        )),
                    Flexible(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: ResourceTask.collection2.length,
                          itemBuilder: (context, index) {
                            return ResourceTask.collection2[index];
                          },
                        )),
                  ],
                )),
            const SizedBox(
              height: 20.0,
            ),
            Container(
                height: 200,
                margin: EdgeInsets.only(bottom: 30),
                padding: const EdgeInsets.only(left: 30 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rooms',
                      style: TextStyle(color: Colors.grey[500], fontSize: 17),
                    ),
                    Flexible(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: ResourceTask.collection3.length,
                          itemBuilder: (context, index) {
                            return ResourceTask.collection3[index];
                          },
                        )),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
