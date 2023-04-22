import 'package:ecommerce/sign_up.dart';
import 'package:flutter/material.dart';

import 'mdp_oublie.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {

  bool _validate = false;
  var passwordController = TextEditingController();
  bool isPassword = true;

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
                  height: 10.0,
                ),
                Image(
                  image: AssetImage("assets/logo.png"),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Color(0xFF01579B),
                  ),
                ),
                Text(
                  "Sign into your account",
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    hintText: "User",
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor: Colors.white,
                    /*fillColor: Colors.lightBlueAccent.withOpacity(0.9),*/ // Modification de la couleur de remplissage en bleu ciel
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isPassword,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[600]),
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),

                      suffixIcon:  IconButton(
                        onPressed: (){
                          isPassword = !isPassword;
                          setState(() {
                          });
                        },
                        icon: Icon(
                          Icons.remove_red_eye,
                        ),
                      ),
                      /*fillColor: Colors.white.withOpacity(1),*/


                    )),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) =>  MdpOublie()),
                        );

                        },
                        child: Text(
                          "Password forgotten  ?",
                          style: TextStyle(color: Colors.black),
                        )
                    ),

                  ],
                ),
                SizedBox(
                  height: 4.0,
                ),
                Container(
                  width: 120,
                  margin: EdgeInsets.symmetric(horizontal: 125),
                  child: RaisedButton(
                    onPressed: () {
                      print(passwordController);

                    },
                    color: Color(0xFF01579B),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Connect",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
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
                      "Don't you have an account ?",
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  SignUp()),
                          );

                        },
                        child: Text(
                          "Create",
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
