import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  final pic;
  final text1;
  const HomePage({super.key,required this.pic,required this.text1});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 13,
      shadowColor: Colors.grey,
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(6)),
        child: Column(
          children: [
            Image(
              image: NetworkImage(
                pic,
              ),
              height: 90,
            ),
            Text(text1,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}