import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UI3 extends StatefulWidget {
  const UI3({Key? key}) : super(key: key);

  @override
  State<UI3> createState() => _UI3State();
}

class _UI3State extends State<UI3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UI3")),
      body: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          margin: EdgeInsets.only(left: 30, top: 10),
          height: 250,
          width: 370,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1586078130702-d208859b6223?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG1vZGVsJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60'),
              )),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.1)
                  ],
                )),
            child: Container(
              margin: EdgeInsets.only(top: 180, left: 20),
              child: Text(
                "PDP Online",
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(left: 30, top: 10),
            height: 250,
            width: 370,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1586078130702-d208859b6223?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG1vZGVsJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60'),
                )),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.1),
                  ])),
              child: Container(
                margin: EdgeInsets.only(top: 180, left: 20),
                child: Text(
                  "PDP Online",
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
              ),
            )),
        Container(
            margin: EdgeInsets.only(left: 30, top: 10),
            height: 250,
            width: 370,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1586078130702-d208859b6223?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG1vZGVsJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60'),
                )),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.1),
                  ]),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 180, left: 20),
                  child: Text(
                    "PDP Online",
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                )))
      ]),
    );
  }
}
