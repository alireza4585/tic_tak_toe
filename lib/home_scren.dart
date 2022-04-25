import 'package:flutter/material.dart';
import 'package:tic_tak_tok/mantegh.dart';

class Homme extends StatefulWidget {
  const Homme({Key? key}) : super(key: key);

  @override
  State<Homme> createState() => _HommeState();
}

class _HommeState extends State<Homme> {
  bool isTurnO = true;
  List OorX = ['', '', '', '', '', '', '', '', ''];
  int countX = 0;
  int countO = 0;
  void _show() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
      'chose another one',
      style: TextStyle(fontSize: 18),
    )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        title: Text('tictactoe'),
      ),
      backgroundColor: Colors.grey[900],
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 20),
          getRow(),
          SizedBox(height: 40),
          grid(),
          reset(),
          SizedBox(height: 80),
          getturn(),
        ],
      )),
    );
  }

  Widget reset() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.grey[900]),
      onPressed: () {
        setState(() {
          OorX = craterlist();
          countO = 0;
          countX = 0;
        });
      },
      child: Text(
        'Reset',
        style: TextStyle(fontSize: 22),
      ),
    );
  }

  Widget getturn() {
    return Text(
      isTurnO ? 'O' : 'X',
      style: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
    );
  }

  Widget grid() {
    return Expanded(
      child: GridView.builder(
          // shrinkWrap: true,
          itemCount: 9,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  tapped(index);
                  if (winO(OorX)) {
                    OorX = craterlist();
                    countO += 1;
                  } else if (winX(OorX)) {
                    countX += 1;
                    OorX = craterlist();
                  }
                  if (ful(OorX)) {
                    OorX = craterlist();
                  }
                });
              },
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Text(
                  OorX[index],
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: OorX[index] == 'O' ? Colors.red : Colors.green,
                  ),
                ),
              ),
            );
          }),
    );
  }

  void tapped(int index) {
    if (OorX[index] != '') {
      //return state
      return _show();
    }
    if (isTurnO) {
      OorX[index] = 'O';
    } else {
      OorX[index] = 'X';
    }
    isTurnO = !isTurnO;
  }

  Widget getRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'player  O',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                '$countO',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'player  X',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                '$countX',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            )
          ],
        ),
      ],
    );
  }
}
