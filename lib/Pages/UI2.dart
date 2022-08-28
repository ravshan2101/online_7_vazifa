import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_7_vazifa/main.dart';

class UI2 extends StatefulWidget {
  const UI2({Key? key}) : super(key: key);

  @override
  State<UI2> createState() => _UI2State();
}

class _UI2State extends State<UI2> {
  final _fromKey = GlobalKey<FormState>();
  String? _email, _password;
  _qabulQil() {
    if (_fromKey.currentState!.validate()) {
      _fromKey.currentState!.save();
      print("Welcome to America");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI2')),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 300,
            margin: const EdgeInsets.only(top: 160),
            child: const Image(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzFj87v7cdZAMuQzMol5zsNpdwU87kaGE270YOjLf8vIklU9dfvQnZ_yKE5AiLvgttPA&usqp=CAU')),
          ),
          Container(
              child: Form(
            key: _fromKey,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: "Name"),
                    validator: (value) =>
                        value!.isEmpty ? "Ism kiriting..!" : null,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: "Email"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email kiritilmagan..!";
                      }
                      if (!value.contains("@")) {
                        return "@ belgisi bo'lishi shart..!";
                      }
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                  child: TextFormField(
                      decoration: const InputDecoration(labelText: "Password"),
                      validator: (value) => value!.length < 6
                          ? "Minimal 6 ta belgi bo'lishi kerak..!"
                          : null),
                ),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  minWidth: 350,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: Colors.blue,
                  onPressed: () {
                    _qabulQil();
                  },
                  child: const Text("Sign Up"),
                )
              ],
            ),
          )),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 150),
                  child: const Text("Already have an account?"),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 150, left: 20),
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("UI3");
        },
      ),
    );
  }
}
