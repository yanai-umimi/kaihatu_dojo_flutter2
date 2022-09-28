import 'package:flutter/material.dart';
import '../../constants/pallete.dart';

class HomeScreen extends StatelessWidget {
  final String text;

  HomeScreen({required this.text}) : super();

  @override
  Widget build(BuildContext context) {
    var _viewData = <Widget>[
      Container(
        color: Colors.red,
        child: Text(
          "1",
          style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto"),
        ),
      ),
      Container(
        color: Colors.blue,
        child: Text(
          "2",
          style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto"),
        ),
      ),
      Container(
        color: Colors.green,
        child: Text(
          "3",
          style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto"),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('本棚'),
        backgroundColor: Palette.primaryColor,
        // leading: IconButton(
        //   onPressed: () => {
        //     Navigator.of(context).pushNamed('/get-started'),
        //   },
        //   icon: Icon(
        //     Icons.play_arrow_outlined,
        //     color: Palette.secondaryColor,
        //   ),
        // ),
        actions: [
          IconButton(
            onPressed: () => {
              Navigator.of(context).pushNamed('/screens/add_book'),
            },
            icon: const Icon(
              Icons.filter_9_plus_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        padding: const EdgeInsets.all(10),
        children: List.generate(
          200,
          (index) => Container(
            color: Colors.blueGrey,
            child: Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
