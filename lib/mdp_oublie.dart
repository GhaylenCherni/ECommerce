import 'package:flutter/material.dart';

import 'login_screen.dart';

class MdpOublie extends StatefulWidget {
  const MdpOublie({Key? key}) : super(key: key);

  @override
  State<MdpOublie> createState() => _MdpOublieState();
}

class _MdpOublieState extends State<MdpOublie> {
  final _mail = TextEditingController();
  bool _validate = false;
  @override
  void dispose() {
    _mail.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Image(
                  image: AssetImage("assets/logo.png"),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "password forgotten ?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Color(0xFF01579B),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Enter the e-mail address associated with your account ",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "We'll email you a new password to verify your authenticity",
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  controller: _mail,

                  keyboardType: TextInputType.emailAddress,
                  maxLines: 1,
                  decoration: InputDecoration(
                    errorText: _validate ? "Entrer Votre E-mail" : null,

                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.grey[600]),
                    hintText: "E-mail",
                    prefixIcon: Icon(Icons.mail),
                   /* fillColor: Colors.white.withOpacity(0.9),*/
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Mail cannot be empty';
                    }
                    if (!RegExp(
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))+$')
                        .hasMatch(value)) {
                      return 'Please enter valid mail';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  width: 120,
                  margin: EdgeInsets.symmetric(horizontal: 120),
                  child: RaisedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Text('Check your mail for the new password please !'),
                            actions: [
                              FlatButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    color: Color(0xFF01579B),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),

                    child: Text(
                      "Send",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Remember your password ?",
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) =>  LoginScreen()),
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Color(0xFF01579B)),
                        )
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
