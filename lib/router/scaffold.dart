import 'package:flutter/material.dart';
import 'package:flutter_application_1/dao/tv/subject.dart';
import 'package:flutter_application_1/service/http.dart';
import '../dao/picture.dart';
import '../service/get_pic_data.dart';

class ClosetScaffold extends StatefulWidget {
  const ClosetScaffold({super.key, required this.title});
  final String title;

  @override
  State<ClosetScaffold> createState() => _ClosetScaffoldState();
}

class _ClosetScaffoldState extends State<ClosetScaffold> {
  // 获取网格视图内的Item Widget
  List<Subject> data = [];
  // 获取豆瓣电视剧
  _getTVDetailsFuture() {
    print("object");
    // getTVDetails().then((value) => () {
    //       setState(() {
    //         data = value.subjects as List<Subject>;
    //       });
    //     });
  }

  Widget _getGridItemWidget(i) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      elevation: 10,
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              data[i].cover ?? "",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(data[i].title ?? "未获取到数据"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(15),
        children: List.generate(data.length, (i) => _getGridItemWidget(i)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getTVDetailsFuture,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.amber), label: "主页"),
        BottomNavigationBarItem(
            icon: Icon(Icons.child_friendly, color: Colors.amber), label: "主页"),
        BottomNavigationBarItem(
            icon: Icon(Icons.people, color: Colors.amber), label: "主页"),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.amber), label: "主页")
      ], selectedItemColor: Colors.amber),
    );
  }
}
