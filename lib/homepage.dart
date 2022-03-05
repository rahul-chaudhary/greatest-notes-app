import 'dart:ui';
import 'package:flutter/material.dart';
import 'colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double scrnWth = 0.0;
  MyColors clr = MyColors();

  @override
  Widget build(BuildContext context) {
    scrnWth = MediaQuery.of(context).size.width; //Screen width

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      children: [
                        pCard(),
                        pCard(),
                      ],
                    ),
                    Row(
                      children: [
                        pCard(),
                        pCard(),
                      ],
                    ),
                    Row(
                      children: [
                        pCard(),
                        pCard(),
                      ],
                    ),
                  ],
                )),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
              child: ElevatedButton(
                child: const Text(
                  "Add note",
                  style: TextStyle(
                    fontSize: 35.0,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  primary: clr.clrTeal,
                  elevation: 5.0,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding pCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: SizedBox(
          width: scrnWth / 2.2,
          height: 150,
          child: Card(
            elevation: 5.0,
            color: clr.clrIndigo,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "Title",
                      style: TextStyle(
                        color: clr.clrGreyLight,
                        // fontSize: 25.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Text(
                        "This is  an example text and I am making a note app which is note taker.",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: clr.clrGreyLight,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
