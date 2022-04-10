// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:training_flutter_app/src/models/post_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final List<String> _listOfTrainees = [
  //   "Hoàng Đặng",
  //   "Phát",
  //   "Hiệp Thành",
  //   "Minh Nhật",
  //   "Hồng Sơn",
  //   "Tuấn",
  //   "Quốc Bảo",
  //   "Xuân Nhựt"
  // ];

  Widget _buildPost(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 560.0,
        decoration: BoxDecoration(
            // color: Colors.blue[200],
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Container(
                width: 50.0,
                height: 50.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    )
                  ],
                ),
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image(
                      height: 50.0,
                      width: 50.0,
                      image: AssetImage(posts[index].authorImageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              title: Text(
                posts[index].authorName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(posts[index].timeAgo),
              trailing: IconButton(
                icon: const Icon(Icons.more_horiz),
                color: Colors.black,
                onPressed: () => print('More'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              width: double.infinity,
              height: 400.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, 5),
                    blurRadius: 8.0,
                  ),
                ],
                image: DecorationImage(
                    image: AssetImage(posts[index].imageUrl),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () => print('Like post nè'),
                            icon: const Icon(Icons.favorite_border),
                            iconSize: 30.0,
                          ),
                          const Text(
                            '1,304',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () => print('Comment post nè'),
                            icon: const Icon(Icons.chat),
                            iconSize: 30.0,
                          ),
                          const Text(
                            '2,001',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () => print('Save post nè'),
                      iconSize: 30.0,
                      icon: const Icon(Icons.bookmark_border))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      backgroundColor: const Color(0xFFEDF0F6),
      // backgroundColor: Color.fromARGB(125, 79, 202, 169),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Flutter Trainess 2022',
                  style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () => print("TV nè"),
                        icon: const Icon(Icons.live_tv)),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Container(
                      width: 55.0,
                      color: Colors.red,
                      child: IconButton(
                          onPressed: () => print("Send nè"),
                          icon: const Icon(Icons.send)),
                    )
                    // https://www.youtube.com/watch?v=WYL66RNZpDI
                    // chưa buồn ngủ mà 3p50 òi
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100.0,
            // color: Colors.green[300],
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length + 1,
              itemBuilder: (BuildContext contex, int index) {
                if (index == 0) {
                  return const SizedBox(
                    width: 10.0,
                  );
                }
                //else
                return Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 60.0,
                  height: 60.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      )
                    ],
                  ),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image(
                        height: 60.0,
                        width: 60.0,
                        image: AssetImage(stories[index - 1]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          _buildPost(0),
          _buildPost(1),
          Text(posts[0].authorImageUrl)
        ],
      ),
    );
  }
}

// Center(
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       const Text(
//         'You have pushed the button this many times:nnnnn',
//       ),
//       // Text(
//       //   '$_listOfTrainees',
//       //   style: Theme.of(context).textTheme.headline6,
//       // ),
//       // ListView(
//       //   shrinkWrap: true,
//       //   children: <Widget>[
//       //     for (var _trainee in _listOfTrainees)
//       //       Text(
//       //         _trainee,
//       //         style: Theme.of(context).textTheme.headline4,
//       //       ),
//       //   ],
//       // )
//     ],
//   ),
// ),
