import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('similar photo'),
        backgroundColor: Colors.indigo[800],
      ),
      backgroundColor: Colors.indigo,
      body: const ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int limage = 6;
  int rimage = 1;
  void num() {
    limage = Random().nextInt(8) + 1;
    rimage = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          rimage == limage ? 'Congratulation u did it♥' : 'Try Again :)',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      num();
                    });
                    ();
                    // print('tapped LEFT');
                    print('LEFT=$limage');
                    print('RIGHT=$rimage');
                  },
                  child: Image.asset('images/$limage.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      num();
                    });
                    ();
                    print('LEFT=$limage');
                    print('RIGHT=$rimage');
                  },
                  child: Image.asset('images/$rimage.png'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
