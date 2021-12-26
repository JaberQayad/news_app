import 'package:flutter/material.dart';


class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: ( context , position ){
      return Card(
        child: _drawSingleRow(),
      );

    },
    itemCount: 20,
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

}
