//  //   ///
//  Import LIBRARIES
import 'dart:math';
import 'package:flutter/material.dart';
//  Import FILES
//  //   ///

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> ints = [0, 1, 2, 3, 4, 5];
  List<String> words = ['comment', 'like', 'subscribe', 'spellthorne'];

  late int number = 0;
  late bool understand = false;
  late String word = 'blank';
  late Map<String, Object> data = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferemces Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            customRow(number, updateNumber, 'number'),
            const SizedBox(height: 40.0),
            customRow(understand, updarteUnderstand, 'understand'),
            const SizedBox(height: 40.0),
            customRow(word, updarteWord, 'word'),
            const SizedBox(height: 40.0),
            customRow(data, updarteData, 'data'),
            const SizedBox(height: 100.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('${data['number']}'),
                Text('${data['understand']}'),
                Text('${data['word']}'),
              ],
            ),
            const SizedBox(height: 200.0),
            ElevatedButton(
                onPressed: clearData, child: const Text('Clear Data'))
          ],
        ),
      ),
    );
  }

  Row customRow(data, Function()? onPressed, String buttonText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('$data'),
        ElevatedButton(
          onPressed: onPressed,
          child: Text(buttonText),
        )
      ],
    );
  }

  void updateNumber() async {
    setState(() {
      number = ints[rnd];
    });
  }

  void updarteUnderstand() async {
    setState(() {
      understand = !understand;
    });
  }

  void updarteWord() async {
    setState(() {
      word = words[rnd];
    });
  }

  void updarteData() async {
    setState(() {
      data = {
        'number': number,
        'understand': understand,
        'word': word,
      };
    });
  }

  void clearData() async {
    setState(() {
      data = {};
    });
  }

  int rnd = 0;
  @override
  void initState() {
    super.initState();
    rnd = Random().nextInt(5);
  }
}
