import 'package:ecommerce/login_screen.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _mail = TextEditingController();
  final _nom = TextEditingController();
  final _prenom = TextEditingController();
  final _pseudo = TextEditingController();
  final _telephone = TextEditingController();
  final _mdp = TextEditingController();

  bool _validate = false;
  bool isChecked = true;
  bool isPassword = true;
  @override
  void dispose() {
    _mail.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var _checked;
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
                /*SizedBox(
                  height: 5.0,
                ),*/
                TextFormField(
                    controller: _nom,
                    maxLines: 1,
                    decoration: InputDecoration(
                      errorText: _validate ? "Enter Your First Name" : null,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[600]),
                      hintText: "First Name",
                      /*fillColor: Colors.white.withOpacity(0.9),*/
                    )),
                SizedBox(
                  height: 7.0,
                ),
                TextFormField(
                    controller: _prenom,
                    maxLines: 1,
                    decoration: InputDecoration(
                      errorText: _validate ? "Enter Your Last Name" : null,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[600]),
                      hintText: "Last Name",
                      /*fillColor: Colors.white.withOpacity(0.9),*/
                    )),
                SizedBox(
                  height: 7.0,
                ),
                TextFormField(
                    controller: _pseudo,
                    maxLines: 1,
                    decoration: InputDecoration(
                      errorText: _validate ? "Enter Your UserName" : null,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[600]),
                      hintText: "UserName",
                     /* fillColor: Colors.white.withOpacity(0.9),*/
                    )),
                SizedBox(
                  height: 7.0,
                ),
                TextFormField(
                    controller: _mail,
                    keyboardType: TextInputType.emailAddress,
                    maxLines: 1,
                    decoration: InputDecoration(
                      errorText: _validate ? "Enter Your E-mail" : null,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[600]),
                      hintText: "E-mail",
                      prefixIcon: Icon(Icons.email),
                      /*fillColor: Colors.white.withOpacity(0.9),*/
                    )),
                SizedBox(
                  height: 7.0,
                ),
                TextFormField(
                    controller: _telephone,
                    keyboardType: TextInputType.phone,
                    maxLines: 1,
                    decoration: InputDecoration(
                      errorText: _validate ? "Enter Your Phone Number" : null,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[600]),
                      hintText: "Phone Number",
                      prefixIcon: Icon(Icons.phone),
                      /*fillColor: Colors.white.withOpacity(0.9),*/
                    )),
                SizedBox(
                  height: 7.0,
                ),
                TextFormField(
                    controller: _mdp,
                    obscureText: isPassword,
                    maxLines: 1,
                    decoration: InputDecoration(
                      errorText: _validate ? "Enter Your Password" : null,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[600]),
                      hintText: "Password",
                      prefixIcon: Icon(Icons.password),
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
                      /*fillColor: Colors.white.withOpacity(0.9),*/
                    )),
                SizedBox(
                  height: 7.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:0),
                  child: CheckboxListTile(
                    title: Text("I accept all terms and conditions"),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: isChecked,
                    onChanged: (value){
                      setState(() => isChecked = value!);
                    },
                    activeColor: Color(0xFF01579B),
                    checkColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),

                Container(
                  width: 120,
                  margin: EdgeInsets.symmetric(horizontal: 125),
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        _mail.text.isEmpty ? _validate = true : _validate = false;
                        _nom.text.isEmpty ? _validate = true : _validate = false;
                        _pseudo.text.isEmpty ? _validate = true : _validate = false;
                        _prenom.text.isEmpty ? _validate = true : _validate = false;
                        _mdp.text.isEmpty ? _validate = true : _validate = false;
                        _telephone.text.isEmpty ? _validate = true : _validate = false;



                      });
                    },
                    color: Color(0xFF01579B),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "S'inscrire",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(left: 20.0, top: 50.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: FloatingActionButton(
              backgroundColor: Color(0xFF01579B),
              child: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),

      ),
    );
  }
}

