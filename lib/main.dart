import 'package:flutter/material.dart';
import 'package:tic_tak_tok/home_scren.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homme(),
    );
  }
}
