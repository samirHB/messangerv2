import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://avatarfiles.alphacoders.com/310/310097.png',
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Chats',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt,
                color: Colors.blue,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.blue,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Search Bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                      ),
                    ),
                    const Text('Search')
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 120,
                child: ListView.separated(
                  separatorBuilder: ((context, index) => const SizedBox(
                        width: 5,
                      )),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return avatarIcon();
                  },
                  itemCount: 10,
                ),
              ),

              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => chatCol(),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 7.0,
                      ),
                  itemCount: 30),
            ],
          ),
        ),
      ),
    );
  }
}

Widget chatCol() => Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://avatarfiles.alphacoders.com/310/310195.jpg'),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 10,
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 8,
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Samir hberra',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Hello this is the first app clone')
          ],
        )
      ],
    );

Widget avatarIcon() => Container(
      width: 60.0,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://avatarfiles.alphacoders.com/310/310195.jpg'),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 8,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          const Text(
            'Samir Hberra ',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          )
        ],
      ),
    );
