import 'package:flutter/material.dart';

class Test extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
body: SafeArea(
  child: Column(
    children: [
      Text('welcome to the testpage')
    ],
  ),
),
backgroundColor: Colors.grey[900],
);
}
}
