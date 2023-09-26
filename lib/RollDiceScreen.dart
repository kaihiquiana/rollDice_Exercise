import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  int activeDiceFace = 6;
  List<String> diceFaces = [
    'https://www.clker.com/cliparts/X/w/P/Y/q/H/dice-1-hi.png',
    'https://www.clker.com/cliparts/X/V/S/C/I/x/dice-2-md.png',
    'https://www.clker.com/cliparts/y/Z/w/X/X/j/dice-3-md.png',
    'https://th.bing.com/th/id/R.57b416fe0acd98c034b22d44580439ab?rik=zTQP7yV%2bLgO18w&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fRcd%2fgjb%2fRcdgjbnXi.jpeg&ehk=tOYEuXCNCfEePHM2T60PGnpSWS41KD5NJSfyM86vaTo%3d&risl=&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/R.6e77dc84ae200000719395017bb49272?rik=gn1rLpUl5Ssx5Q&riu=http%3a%2f%2fsmathsmarts.com%2fwp-content%2fuploads%2f2016%2f07%2fdie_face_6.png&ehk=MXVkzlhLdbDbEzQTle%2fI2f%2ffLgPxOX6agB7g7vmA%2bjI%3d&risl=&pid=ImgRaw&r=0',
    'https://w7.pngwing.com/pngs/553/231/png-transparent-dice-dominoes-bunco-dice-face-game-white-face.png',
    'https://media1.tenor.com/images/2e8b10ca1c5b6de6c1cd18fbb73896a9/tenor.gif?itemid=7337987'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.blue.shade600,
        Colors.purple.shade600,
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Hi',
                style: TextStyle(
                  color: Colors.white,
                )),
            SizedBox(
              height: 40,
            ),
            Image.network(diceFaces[activeDiceFace]),
            TextButton(
                onPressed: () {
                  var ranNum = Random().nextInt(6);
                  setState(() {
                    activeDiceFace = ranNum;
                  });
                  print('Button Pressed!');
                },
                child: const Text(
                  'Roll Dice',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}
