import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  final _fromKey = GlobalKey<FormState>();
  String? _email, _password;
  _qubulQil() {
    if (_fromKey.currentState!.validate()) {
      _fromKey.currentState!.save();
      print("Welcome to America");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
            height: 350,
            child: Container(
                margin: EdgeInsets.only(top: 270),
                child: const Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzFj87v7cdZAMuQzMol5zsNpdwU87kaGE270YOjLf8vIklU9dfvQnZ_yKE5AiLvgttPA&usqp=CAU'),
                ))),
        Container(
          child: Form(
              key: _fromKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Email"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email kiritilmagan..!";
                        }
                        if (!value.contains("@")) {
                          return "@ belgisi bo'lishi shart..!";
                        }
                      },
                      onSaved: (newValue) {
                        _email = newValue;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Parol"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Parol kiritilmagan..!";
                        }
                        if (value.length < 6) {
                          return "Parol minimal 6 ta belgi bolishi shart..!";
                        }
                      },
                      onSaved: (newValue) => _password = newValue,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  MaterialButton(
                    minWidth: 400,
                    height: 40,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.5)),
                    color: Colors.blue,
                    onPressed: _qubulQil,
                    child: const Text("Log In"),
                  )
                ],
              )),
        ),
        Container(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, left: 98),
                child: Text("Don't have account?"),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "     Sign up",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).pushNamed("UI2");
      }),
    );
  }
}
