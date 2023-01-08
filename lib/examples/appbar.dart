import 'package:flutter/material.dart';

class AppBarExample extends StatefulWidget {
  const AppBarExample({Key? key}) : super(key: key);

  @override
  State<AppBarExample> createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sahar application'),
        leading: IconButton(
          icon: const Icon(Icons.notifications_none),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.login_outlined),
            onPressed: () {},
          ),
        ],
        elevation: 10.0,
        leadingWidth: 30.0,
        shadowColor: Colors.green,
        backgroundColor: Colors.black,
        // brightness: Brightness.dark,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      endDrawer: const Drawer(),
      body: Container(),
    );
  }
}

class DrawerExample extends StatefulWidget {
  const DrawerExample({Key? key}) : super(key: key);

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {

  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        title: const Text('sahar application'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.login_outlined),
            onPressed: () {},
          ),
        ],
        elevation: 10.0,
        leadingWidth: 30.0,
        shadowColor: Colors.green,
        backgroundColor: Colors.green,
        // brightness: Brightness.dark,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.green
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.green,),
                ),
                accountName: Text('Sahar Akbik'),
                accountEmail: Text('Saharakbeek@hotmail.com')),
            ListTile(
              title: const Text(
                'Home Page',
                style: TextStyle(color: Colors.green),
              ),
              leading: const Icon(Icons.home_outlined),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Setting',
                style: TextStyle(color: Colors.green),
              ),
              leading: const Icon(Icons.settings_outlined),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'My Cart',
                style: TextStyle(color: Colors.green),
              ),
              leading: const Icon(Icons.shopping_cart_outlined),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Logout',
                style: TextStyle(color: Colors.green),
              ),
              leading: const Icon(Icons.login_outlined),
              onTap: () {},
            ),
          ],
        ),
      ),
      // drawerScrimColor: Colors.transparent,
      drawerScrimColor: Colors.green.withOpacity(0.5),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: MaterialButton(
            onPressed: () {
              globalKey.currentState!.openDrawer();
            },
            child: Container(
              height: 50.0,
              width: 200.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.black , width: 2.0),
                  borderRadius: BorderRadius.circular(30.0)

              ),
              child: const Text('OPEN DRAWER' , style: TextStyle(fontSize: 20.0 ),),
            ),
          ),
        ),
      ),
    );
  }
}
