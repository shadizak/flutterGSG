import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/data/product_data.dart';

import 'Widgets/product_Widgets.dart';

void main() {
  runApp(MaterialApp(home: screen1()));
}

class screen1 extends StatefulWidget {
  @override
  _screen1State createState() => _screen1State();
}

class _screen1State extends State<screen1> with SingleTickerProviderStateMixin {
  int index = 0;
  TabController tabController;
  initTabController() {
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initTabController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo App'),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(icon: Icon(Icons.favorite), text: 'favorite'),
            Tab(icon: Icon(Icons.done), text: 'profile'),
          ],
        ),
      ),
      body: TabBarView(
          controller: tabController,
          children: [screen12(), screen4(), screen4()]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapedIndex) {
          print(tapedIndex);
          this.index = tapedIndex;
          tabController.animateTo(tapedIndex);
          setState(() {});
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity), label: 'Profile'),
        ],
      ),
    );
  }
}

class screen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
    return screenState();
  }
}

class screenState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    throw UnimplementedError();
  }
}

class screen4 extends StatefulWidget {
  @override
  _screen4State createState() => _screen4State();
}

class _screen4State extends State<screen4> {
  bool statusIs = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Text(statusIs ? 'Accept' : 'Reject'),
        Checkbox(
          value: statusIs,
          onChanged: (value) {
            setState(() {
              statusIs = value;
            });
          },
        )
      ],
    ));
  }
}

class screen12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.green,
        //   title: Text('List Views'),
        // ),
        // body: Center(child: Text('Body Area')),
        body: SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  product.map((e) => product_Widgets(product: e)).toList(),
            ),
          ),
          Text('Products'),
          Column(
            children: product.map((e) => product_Widgets(product: e)).toList(),

            // children: [
            //   Row(
            //     children: [
            //       Container(
            //         margin: EdgeInsets.all(5),
            //         padding: EdgeInsets.all(5),
            //         decoration: BoxDecoration(
            //             color: Colors.red,
            //             borderRadius: BorderRadius.circular(5)),
            //         //color: Colors.red,
            //         child: Text('Name:'),
            //         //alignment: Alignment.center,
            //       ),
            //       Container(
            //         margin: EdgeInsets.all(5),
            //         padding: EdgeInsets.all(5),
            //         decoration: BoxDecoration(
            //             color: Colors.red,
            //             borderRadius: BorderRadius.circular(5)),
            //         //color: Colors.red,
            //         child: Text('Shadi zAqout'),
            //         //alignment: Alignment.center,
            //       ),
            //     ],
            //   ),
            //   Row(
            //     children: [
            //       Container(
            //         margin: EdgeInsets.all(5),
            //         padding: EdgeInsets.all(5),
            //         decoration: BoxDecoration(
            //             color: Colors.red,
            //             borderRadius: BorderRadius.circular(5)),
            //         //color: Colors.red,
            //         child: Text('Address:'),
            //         //alignment: Alignment.center,
            //       ),
            //       Container(
            //         margin: EdgeInsets.all(5),
            //         padding: EdgeInsets.all(5),
            //         decoration: BoxDecoration(
            //             color: Colors.red,
            //             borderRadius: BorderRadius.circular(5)),
            //         //color: Colors.red,
            //         child: Text('Gaza'),
            //         //alignment: Alignment.center,
            //       ),
            //     ],
            //   ),
            // ],
          ),
        ],
      ),
    ));
  }
}

// class screen1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: Text('First App'),
//       ),
//       // body: Center(child: Text('Body Area')),
//       body: Container(
//         margin: EdgeInsets.all(50),
//         padding: EdgeInsets.all(20),
//         decoration: BoxDecoration(
//             color: Colors.red, borderRadius: BorderRadius.circular(20)),
//         //color: Colors.red,
//         child: Text('SHADI ZAQOUT'),
//         //alignment: Alignment.center,
//       ),
//     );
//   }
// }