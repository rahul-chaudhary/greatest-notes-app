import 'package:flutter/material.dart';
import 'colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  MyColors clr = MyColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr.clrIndigo,
      appBar: AppBar(
        backgroundColor: clr.clrIndigoDark,
        title: const Text(
          "Notes",
          style: TextStyle(
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
        toolbarHeight: 65.0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                child: Container(),
              )
            ],
          ),
        ],
      )),
    );
  }
}
