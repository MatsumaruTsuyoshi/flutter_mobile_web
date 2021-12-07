import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'pick_export.dart'; //正
// import 'pick_web.dart'; //誤

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Uint8List? uint8list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            //ファイル選択ボタン
            child: ElevatedButton(
                onPressed: () async {
                  final _uint8List = await Pick().pickFile();
                  setState(() {
                    uint8list = _uint8List;
                  });
                },
                child: const Text('ファイルを選択')),
          ),

          //画像を選択したら表示
          uint8list != null
              ? Expanded(child: Image.memory(uint8list!))
              : const SizedBox()
        ],
      ),
    );
  }
}
