import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {'note': "should going shopping", 'image': "images/shopping.jpg"},
    {'note': "should buy clothes ", 'image': "images/clothes.jpg"},
    {'note': "go to the gym", 'image': "images/gym.jpg"},
    {'note': "watching Movie", 'image': "images/cinema.jpg"}
  ];

  @override
  Widget build(BuildContext context) {
    double mdq = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('addnote');
        },
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      appBar: AppBar(
        title: const Text('HomaPage'),
      ),
      body: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, i) {
            return Dismissible(key: Key("$i"),
            child: ListNote(notes: notes[i], mdq: mdq));
          }),
    );
  }
}

class ListNote extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final notes;

  // ignore: prefer_typing_uninitialized_variables
  final mdq;

  const ListNote({super.key, this.notes, this.mdq});

  // const ListNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
              child: Image.asset(
            notes['image'],
            height: 100,
            fit: BoxFit.cover,
          )),
          Expanded(
            flex: 2,
            child: ListTile(
              title: Text('Title'),
              subtitle: Text('${notes['note']}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
