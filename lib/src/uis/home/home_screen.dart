// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

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
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Flutter Trainess 2022:',
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
                      //Buồn ngủ quá mai tiếp
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 100.0,
              color: Colors.green[300],
            )
          ],
        ));
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
