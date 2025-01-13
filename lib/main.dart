import 'package:flutter/material.dart';

void main() {
  //플러터는 모든것이 위젯
  //전달된 위젯을 최상위 위젝으로 설정하고 앱을 시작하는 함수
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Text(
                    'Woman',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Kids',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Shoes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Bag',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
                child: Image.asset(
              'assets/bag.webp',
              fit: BoxFit.cover,
            )),
            //자식3
            Expanded(
                child: Image.asset(
              'assets/cloth.webp',
              fit: BoxFit.cover,
            )),
          ],
          //자식1
          //자식2
          //자식3
        ),
      ),
    );
  }
}
