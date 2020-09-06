import 'package:banana/src/ui/widgets/BibleChapterWidget.dart';
import 'package:flutter/material.dart';

class MainScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('MainScreen'),
      // ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: 150.0,
            flexibleSpace: Placeholder(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                // return ListTile(title: Text("Item $index"));
                return BibleChapter();
              },
              childCount: 66,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('Schoollll'),
          ),
        ],
      ),
    );
  }
}
