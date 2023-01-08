import 'package:flutter/material.dart';

import '../view/demo.dart';

class SecondTask extends StatefulWidget {
  const SecondTask({Key? key}) : super(key: key);

  @override
  State<SecondTask> createState() => _SecondTaskState();
}

class _SecondTaskState extends State<SecondTask> {
  late PageController pc;
  List images = [
    {'url': 'images/task1.jpg'},
    {'url': 'images/jeanse.png'},
    {'url': 'images/shoe.png'},
  ];


  List<Widget> img=[
    Image.asset('images/model1.jpg' , fit: BoxFit.cover,),
    Image.asset('images/model2.jpg' , fit: BoxFit.cover,),
    Image.asset('images/model3.jpg' , fit: BoxFit.cover,),
    Image.asset('images/model4.jpg' , fit: BoxFit.cover,),
    Image.asset('images/model5.jpg' , fit: BoxFit.cover,),
    Image.asset('images/model6.jpg' , fit: BoxFit.cover,),
    Image.asset('images/model7.jpg' , fit: BoxFit.cover,),
    Image.asset('images/model8.png' , fit: BoxFit.cover,),

  ];


  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    pc = PageController(
        initialPage: 1, viewportFraction: 0.5); // viewportFraction: 0.5\
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu_sharp),
            onPressed: () {
              globalKey.currentState!.openDrawer();
            },
            iconSize: 35),
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontStyle: FontStyle.italic),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('BLANCO'),
            Icon(
              Icons.stacked_line_chart,
              color: Colors.black,
            ),
            Text('MILANO'),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
          const SizedBox(
            width: 12.0,
          )
        ],
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 400,
              child: PageView.builder(
                // padEnds: false,
                scrollDirection: Axis.vertical,
                physics: ClampingScrollPhysics(),
                itemCount: images.length,
                controller: pc,
                itemBuilder: (context, i) {
                  return Container(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Image.asset(
                        images[i]['url'],
                        fit: BoxFit.cover,
                      ));
                },
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'BLANCO',
                          style: TextStyle(
                              fontSize: 25.0, fontStyle: FontStyle.italic),
                        ),
                        Icon(
                          Icons.stacked_line_chart,
                          color: Colors.black,
                          size: 30,
                        ),
                        Text('MILANO',
                            style: TextStyle(
                                fontSize: 25.0, fontStyle: FontStyle.italic)),
                        // Icon()
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Jeans 'n shirts",
                          style: TextStyle(
                              fontSize: 15.0, fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Image.asset(
                  'images/insta.png',
                  height: 35,
                  width: 35,
                )
              ],
            ),
            const SizedBox(height: 20.0,),
            Container(
              height: 200,
              color: Colors.white,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 4,
                    crossAxisSpacing:4
                ),

                itemBuilder: ( context,  index) {
                  return img[index];
                },
                itemCount: img.length,

              ),
            ),
            const SizedBox(height: 20
              ,),
            Container(
              height: 100.0,
              margin: const EdgeInsets.all( 20.0),
              child: const CA()),

            const SizedBox(height: 20.0,)
          ],
        ),
      ),
    );
  }
}


/**
 *  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: const [
    CircleAvatar(
    radius: 40,
    backgroundColor: Colors.black,
    child:CircleAvatar(
    radius: 36,
    backgroundImage: AssetImage('images/face.png'),
    ) ,
    ),
    CircleAvatar(
    radius: 40,
    backgroundColor: Colors.black,
    child:CircleAvatar(
    radius: 36,
    backgroundImage: AssetImage('images/sms.jpg'),
    ) ,
    ),
    CircleAvatar(
    radius: 40,
    backgroundColor: Colors.black,
    child:CircleAvatar(
    radius: 36,
    backgroundColor: Colors.white,
    child: Icon(Icons.attach_email_outlined , color: Colors.black, size: 40,),
    ) ,
    ),
    ],
    ),
 *
 *
 * */