import 'package:flutter/material.dart';

class Sliver extends StatelessWidget {
  const Sliver({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('todo');
  }

//   _build() {
//     return CustomScrollView(
//       slivers: <Widget>[
//         const SliverAppBar(
//           pinned: true,
//           expandedHeight: 250.0,
//           flexibleSpace: FlexibleSpaceBar(
//             title: Text('Demo'),
//           ),
//         ),
//         SliverGrid(
//           gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//             maxCrossAxisExtent: 200.0,
//             mainAxisSpacing: 10.0,
//             crossAxisSpacing: 10.0,
//             childAspectRatio: 4.0,
//           ),
//           delegate: SliverChildBuilderDelegate(
//             (BuildContext context, int index) {
//               return Container(
//                 alignment: Alignment.center,
//                 color: Colors.teal[100 * (index % 9)],
//                 child: Text('Grid Item $index'),
//               );
//             },
//             childCount: 20,
//           ),
//         ),
//         SliverFixedExtentList(
//           itemExtent: 50.0,
//           delegate: SliverChildBuilderDelegate(
//             (BuildContext context, int index) {
//               return Container(
//                 alignment: Alignment.center,
//                 color: Colors.lightBlue[100 * (index % 9)],
//                 child: Text('List Item $index'),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
}