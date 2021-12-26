// ignore_for_file: prefer_const_constructors
import 'dart:math';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List<Color> colorsList = [
    Colors.teal,
    Colors.deepOrangeAccent,
    Colors.brown,
    Colors.deepPurple,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.purple,
  ];

  Random random = Random();

  Color _getRandomColor() {
    return colorsList[random.nextInt(colorsList.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                _authorRow(),
                SizedBox(height: 16,),
                _newsItemRow(),
              ],
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }

  Widget _authorRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/images/place_holder.png'),
                    fit: BoxFit.cover),
                shape: BoxShape.circle,
              ),
              width: 50,
              height: 50,
              margin: EdgeInsets.only(right: 16),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Michel Adams',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      '15 Min ',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'Live Style',
                      style: TextStyle(
                        color: _getRandomColor(),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        IconButton(
          icon: Icon(Icons.bookmark_border),
          onPressed: () {},
          color: Colors.black54,
        ),
      ],
    );
  }

  Widget _newsItemRow() {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/images/place_holder.png'),
                fit: BoxFit.cover),
          ),
          width: 124,
          height: 124,
          margin: EdgeInsets.only(
            right: 16,
          ),
        ),
        Expanded(
          child: Column(
            children: const [
              Text(
                'Tech Tent: Old photo and safe social',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                'We also talk about the future of work as the robots advance, and we ask whether a retro phone',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  height: 1.25,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
