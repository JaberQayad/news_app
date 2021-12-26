import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsNew extends StatefulWidget {
  const WhatsNew({Key? key}) : super(key: key);

  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _drawHeader(),
          _drawTopStories(),
        ],
      ),
    );
  }

  Widget _drawHeader() {
    TextStyle _headerTitle = TextStyle(
        color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600);
    TextStyle _headerDescription = TextStyle(
      color: Colors.white,
      fontSize: 18,
    );

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/place_holder.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 48,
                right: 48,
              ),
              child: Text(
                'Free, Simple REST API for Live News  Blog Articles',
                style: _headerTitle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 34,
                right: 34,
              ),
              child: Text(
                "Global News Data Free, Simple REST API for Live News  Blog Articles Scalable JSON API delivering worldwide news, headlines and blog articles in real time",
                style: _headerDescription,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawTopStories() {
    return Container(
      color: Colors.grey.shade50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: _drawSectionTitle('Top Stories')),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    bottom: 8,
                    top: 8,
                  ),
                  child: _drawSectionTitle('Recent Updates'),
                ),
                _drawRecentUpdateCard(Colors.deepOrangeAccent),
                _drawRecentUpdateCard(Colors.teal),
                SizedBox(height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawDivider() {
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey.shade200,
    );
  }

  Widget _drawSingleRow() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          SizedBox(
            child: Image(
              image: ExactAssetImage('assets/images/place_holder.png'),
              fit: BoxFit.cover,
            ),
            width: 110,
            height: 110,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  'The world global warning annual summit',
                  maxLines: 2,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Michael Adams'),
                    Row(
                      children: [
                        Icon(Icons.timer),
                        Text('15 min'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _drawSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.grey.shade700,
          fontWeight: FontWeight.w600,
          fontSize: 16),
    );
  }

  Widget _drawRecentUpdateCard(Color color) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/images/place_holder.png'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 16,
            ),
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 2, top: 2),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'SPORT',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 8,
              bottom: 8,
            ),
            child: Text(
              'Vettel is Ferrari Number One - Hamelton',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
            child: Row(
              children: [
                Icon(
                  Icons.timer,
                  color: Colors.grey,
                  size: 18,
                ),
                SizedBox( width: 4,),
                Text(
                  '15 Min',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
