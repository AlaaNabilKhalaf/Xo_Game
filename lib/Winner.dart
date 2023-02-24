import 'package:flutter/material.dart';

class Winner extends StatelessWidget {
  Winner({required String this.winner});
 String winner;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('asset/FB_IMG_15931112998678769.jpg',
            height: 250,
            width: 250,
            fit: BoxFit.cover),
          SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
            height: 60,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(''),
          )
        ],

        ),
    );
  }
}
