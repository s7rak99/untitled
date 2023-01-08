import 'package:flutter/material.dart';

class GridViewBuilderExample extends StatefulWidget {
  const GridViewBuilderExample({Key? key}) : super(key: key);

  @override
  State<GridViewBuilderExample> createState() => _GridViewBuilderExampleState();
}

class _GridViewBuilderExampleState extends State<GridViewBuilderExample> {
  List mobiles = [
    {'name': 'Iphone 14 ', 'screen': '8.2', 'cpu': '8 core'},
    {'name': 'Huawei nova 7i ', 'screen': '6.2', 'cpu': '6 core'},
    {'name': 'Samsung S21 ', 'screen': '8.0', 'cpu': '6 core'},
    {'name': 'Nexus nova 7i ', 'screen': '6.2', 'cpu': '6 core'},
    {'name': 'Oppo S21 ', 'screen': '8.0', 'cpu': '6 core'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: GridView.builder(
            //scrollDirection: Axis.horizontal,
            shrinkWrap:true,
            itemCount: mobiles.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 2.0

            ),
            itemBuilder: (context , i ){
              return ListTile(
                tileColor: Colors.green,
                title: Text('${mobiles[i]['name']}'),
                subtitle: Text('screen ${mobiles[i]['screen']}'),
              );
            },
          ),
        )
    );
  }
}

///////////////////////////
class GridViewExample extends StatefulWidget {
  const GridViewExample({Key? key}) : super(key: key);

  @override
  State<GridViewExample> createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  List mobiles = [
    {'name': 'Iphone 14 ', 'screen': '8.2', 'cpu': '8 core'},
    {'name': 'Huawei nova 7i ', 'screen': '6.2', 'cpu': '6 core'},
    {'name': 'Samsung S21 ', 'screen': '8.0', 'cpu': '6 core'},
    {'name': 'Nexus nova 7i ', 'screen': '6.2', 'cpu': '6 core'},
    {'name': 'Oppo S21 ', 'screen': '8.0', 'cpu': '6 core'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: GridView(

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0
            ),
            children:  [
              Container(
                height: 200,
                color: Colors.red,
                child: const Text('Container One'),
              ),
              Container(
                height: 200,
                color: Colors.blue,
                child: const Text('Container Two'),
              ),
              Container(
                height: 200,
                color: Colors.yellow,
                child: const Text('Container Three'),
              ),
              Container(
                height: 200,
                color: Colors.green,
                child: const Text('Container Four'),
              ),
              Container(
                height: 200,
                color: Colors.orange,
                child: const Text('Container Five'),
              ),

            ],
          ),
        )
    );
  }
}



///////////////////////////
class ListGenerateExample extends StatefulWidget {
  const ListGenerateExample({Key? key}) : super(key: key);

  @override
  State<ListGenerateExample> createState() => _ListGenerateExampleState();
}

class _ListGenerateExampleState extends State<ListGenerateExample> {
  List users = ['sahar' , 'maya', 'ahmad' , 'mohammed'  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Container(
            margin: const EdgeInsets.all(10),
            child: GridView(

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0
                  
              ),
              children: List.generate(users.length, (index){
                return Container(
                  color: Colors.blue,
                  child: Text('container ${users[index]}'),);

              },

              ),
            )
        ));
  }
}


class GridViewCountExample extends StatefulWidget {
  const GridViewCountExample({Key? key}) : super(key: key);

  @override
  State<GridViewCountExample> createState() => _GridViewCountExampleState();
}

class _GridViewCountExampleState extends State<GridViewCountExample> {
  List users = ['sahar' , 'maya', 'ahmad' , 'mohammed'  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Container(
                child: Text('example'),
                height: 20,
                color: Colors.red,
              ),
              Container(
                child: Text('example'),
                height: 20,
                color: Colors.green,
              ),
              Container(
                child: Text('example'),
                height: 20,
                color: Colors.yellow,
              ),

            ],


          ),
        )
    );
  }
}
