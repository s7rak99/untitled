import 'dart:typed_data';

import 'package:flutter/material.dart';

class ResourceTask {
  static List<Container> collection = [
    Container(
        height: 20,
        width: 162,
        margin: const EdgeInsets.only(right: 10.0, bottom: 5, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                //Colors.grey.shade400,
                Colors.lightBlue.shade600,
                Colors.lightBlue.shade900,
                const Color.fromARGB(255, 18, 51, 89),
              ],
            )),
        child: ListTile(
          title: const Text('Light 1',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          subtitle: Text(
            'Kitchen',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade400),
          ),
          leading: const Icon(Icons.light_mode),
          trailing: Text(
            '|',
            style: TextStyle(fontSize: 40, color: Colors.cyan.shade400),
          ),
          iconColor: Colors.cyan.shade400,
          horizontalTitleGap: 10,
        )),
    Container(
        height: 20,
        width: 162,
        margin: const EdgeInsets.only(right: 10.0, bottom: 5, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF1B314D), Color(0xFF1B314D), Color(0xFF1B314D)],
            )),
        child: ListTile(
          title: const Text('Microwave',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          subtitle: Text(
            'Kitchen',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade400),
          ),
          leading: const Icon(Icons.microwave_outlined),
          iconColor: Colors.blueAccent.shade200,
          horizontalTitleGap: 10,
        )),
    Container(
        height: 20,
        width: 162,
        margin: const EdgeInsets.only(right: 10.0, bottom: 5, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF1B314D), Color(0xFF1B314D), Color(0xFF1B314D)],
            )),
        child: ListTile(
          title: const Text('Microwave',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          subtitle: Text(
            'Kitchen',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade400),
          ),
          leading: const Icon(Icons.light_mode_sharp),
          iconColor: Colors.blueAccent.shade200,
          horizontalTitleGap: 10,
        )),
  ];

  static List<Container> collection2 = [
    Container(
        height: 20,
        width: 162,
        margin: const EdgeInsets.only(right: 10.0, bottom: 5, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                //Colors.grey.shade400,
                Colors.lightBlue.shade600,
                Colors.lightBlue.shade900,
                const Color.fromARGB(255, 18, 51, 89),
              ],
            )),
        child: ListTile(
          title: const Text('Toaster',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          subtitle: Text(
            'Kitchen',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade400),
          ),
          leading: const Icon(Icons.breakfast_dining),
          trailing: Text(
            '|',
            style: TextStyle(fontSize: 40, color: Colors.cyan.shade400),
          ),
          iconColor: Colors.cyan.shade400,
          horizontalTitleGap: 10,
        )),
    Container(
        height: 20,
        width: 162,
        margin: const EdgeInsets.only(right: 10.0, bottom: 5, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.lightBlue.shade600,
                Colors.lightBlue.shade900,
                const Color.fromARGB(255, 18, 51, 89),
              ],
            )),
        child: ListTile(
          title: const Text('AC',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          subtitle: Text(
            'Bedroom',
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade400),
          ),
          leading: const Icon(Icons.bed),
          trailing: Text(
            '|',
            style: TextStyle(fontSize: 40, color: Colors.cyan.shade400),
          ),
          iconColor: Colors.cyan.shade400,
          horizontalTitleGap: 10,
        )),
    Container(
        height: 20,
        width: 162,
        margin: const EdgeInsets.only(right: 10.0, bottom: 5, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF1B314D), Color(0xFF1B314D), Color(0xFF1B314D)],
            )),
        child: ListTile(
          title: const Text('Microwave',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          subtitle: Text(
            'Kitchen',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade400),
          ),
          leading: const Icon(Icons.light_mode_sharp),
          iconColor: Colors.blueAccent.shade200,
          horizontalTitleGap: 10,
        )),
  ];

  static List<Container> collection3 = [
    Container(
      height: 20,
      width: 130,
      margin: const EdgeInsets.only(right: 10.0, bottom: 5, top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              //Colors.grey.shade400,
              Colors.lightBlue.shade600,
              Colors.lightBlue.shade900,
              const Color.fromARGB(255, 18, 51, 89),
            ],
          )),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'images/liv.jpg',
                fit: BoxFit.cover,
                height: 120,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Living room',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, bottom: 4.0),
              child: Text(
                '8 devices',
                style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
              ),
            )
          ]),
    ),
    Container(
      height: 20,
      width: 130,
      margin: const EdgeInsets.only(right: 10.0, bottom: 5, top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              //Colors.grey.shade400,
              Colors.lightBlue.shade600,
              Colors.lightBlue.shade900,
              const Color.fromARGB(255, 18, 51, 89),
            ],
          )),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'images/kitch.jpg',
                fit: BoxFit.fill,
                height: 120,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Kitchen',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, bottom: 4.0),
              child: Text(
                '7 devices',
                style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
              ),
            )
          ]),
    ),
    Container(
      height: 20,
      width: 130,
      margin: const EdgeInsets.only(right: 10.0, bottom: 5, top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              //Colors.grey.shade400,
              Colors.lightBlue.shade600,
              Colors.lightBlue.shade900,
              const Color.fromARGB(255, 18, 51, 89),
            ],
          )),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'images/room1.jpg',
                fit: BoxFit.cover,
                height: 120,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Bedroom',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, bottom: 4.0),
              child: Text(
                '12 devices',
                style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
              ),
            )
          ]),
    )
  ];

  static List item = [
    ListTile(
        tileColor: const Color(0xFF164973),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          //<-- SEE HERE

          borderRadius: BorderRadius.circular(18),
        ),
        title: const Text('Light 1'),
        style: ListTileStyle.list,
        subtitle: const Text('Kitchen'),
        leading: Icon(
          Icons.light_mode_rounded,
          size: 30,
          color: Colors.blueAccent.shade200,
        ),
        trailing: Row(mainAxisSize: MainAxisSize.min, children: [
          Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0x9D123359),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                '3 Scenes',
                style: TextStyle(color: Colors.grey.shade400),
              )),
          const Icon(
            Icons.navigate_next,
            size: 30,
            color: Colors.white,
          )
        ])),
    ListTile(
        tileColor: const Color(0xFF164973),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          //<-- SEE HERE

          borderRadius: BorderRadius.circular(18),
        ),
        title: const Text('Light 2'),
        style: ListTileStyle.list,
        subtitle: const Text('Kitchen'),
        leading: Icon(
          Icons.light_mode_rounded,
          size: 30,
          color: Colors.blueAccent.shade200,
        ),
        trailing: Row(mainAxisSize: MainAxisSize.min, children: [
          Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0x9D123359),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                '2 Scenes',
                style: TextStyle(color: Colors.grey.shade400),
              )),
          const Icon(
            Icons.navigate_next,
            size: 30,
            color: Colors.white,
          )
        ])),
    ListTile(
        tileColor: const Color(0xFF164973),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          //<-- SEE HERE

          borderRadius: BorderRadius.circular(18),
        ),
        title: const Text('Light 1'),
        style: ListTileStyle.list,
        subtitle: const Text('Living room'),
        leading: Icon(
          Icons.light_mode_rounded,
          size: 30,
          color: Colors.blueAccent.shade200,
        ),
        trailing: Row(mainAxisSize: MainAxisSize.min, children: [
          Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0x9D123359),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                '5 Scenes',
                style: TextStyle(color: Colors.grey.shade400),
              )),
          const Icon(
            Icons.navigate_next,
            size: 30,
            color: Colors.white,
          )
        ])),
    ListTile(
        tileColor: const Color(0xFF164973),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          //<-- SEE HERE

          borderRadius: BorderRadius.circular(18),
        ),
        title: const Text('Socket 2'),
        style: ListTileStyle.list,
        subtitle: const Text('Kitchen'),
        leading: Icon(
          Icons.business,
          size: 30,
          color: Colors.blueAccent.shade200,
        ),
        trailing: Row(mainAxisSize: MainAxisSize.min, children: [
          Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0x9D123359),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                '2 Scenes',
                style: TextStyle(color: Colors.grey.shade400),
              )),
          const Icon(
            Icons.navigate_next,
            size: 30,
            color: Colors.white,
          )
        ])),
    ListTile(
        tileColor: const Color(0xFF164973),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          //<-- SEE HERE

          borderRadius: BorderRadius.circular(18),
        ),
        title: const Text('Air Conditioner'),
        style: ListTileStyle.list,
        subtitle: const Text('Bedroom'),
        leading: Icon(
          Icons.bed_outlined,
          size: 30,
          color: Colors.blueAccent.shade200,
        ),
        trailing: Row(mainAxisSize: MainAxisSize.min, children: [
          Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0x9D123359),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                '3 Scenes',
                style: TextStyle(color: Colors.grey.shade400),
              )),
          const Icon(
            Icons.navigate_next,
            size: 30,
            color: Colors.white,
          )
        ])),
  ];
}
