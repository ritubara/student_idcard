import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:studentidpass/Student/profile/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isHidden = true;
  bool _obscureText = true;


  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.3, 1],
              colors: [Colors.green, Colors.blue]),),
        child: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                child: CircleAvatar(radius: 72,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                      radius: 70,

                      backgroundImage:
                      NetworkImage(
                        "https://images.unsplash.com/photo-1427504494785-3a9ca7044f45?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(39, 30, 39, 0),
              child: Container(
                child: TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    //borderRadius: BorderRadius.all(Radius.circular(15)),

                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    labelText: 'Email',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(39, 25, 39, 10),
              child: Container(
                child: TextField(
                  //obscureText: true,
                  obscureText: _isHidden,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    labelText: 'Password',
                    suffix: InkWell(
                      onTap: _togglePasswordView,
                      child: Icon(CupertinoIcons.eye_slash),
                    ),
                  ),
                ),
              ),
            ),

            // ignore: deprecated_member_use
            Padding(
              padding: const EdgeInsets.only(left: 228),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {},
                child:
                Text(
                  "Forget Password?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(70, 8, 70, 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Colors.indigo[700],
                  // border: Border.all( width: 2.0),
                ),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Login", style: TextStyle(color: Colors.white,fontSize: 20,),),
                ),
              ),
            ),
            Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text("Sign in with"),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 50),
              child: Row(children: <Widget>[
                // // ignore: deprecated_member_use
                // FlatButton(
                //   onPressed: () {
                //     // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignUp()));
                //   },
                //   child: Image.asset(
                //     'images/google.png',
                //     height: 30,
                //   ),
                // ),
                // ignore: deprecated_member_use
                // FlatButton(
                //   onPressed: () {
                //     // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignUp()));
                //   },
                //   child: Image.network("https://dismasofvt.org/wp-content/uploads/2020/07/facebook-icon-vector-png-17.jpg"
                //     ,
                //     height: 30,
                //   ),
                // ),
                // // ignore: deprecated_member_use
                // FlatButton(
                //   onPressed: () {
                //     // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignUp()));
                //   },
                //   child: Image.network("https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png"
                //      ,
                //     height: 30,
                //   ),
                // ),
              ]),
            ),
            Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: RichText(
                    text: TextSpan(
                        text: 'Don\'t have an account?',
                        style: TextStyle(
                            color: Colors.black, fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(text: ' Sign up',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => signup()));
                                }
                          ),
                        ],
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
void _togglePasswordView() {
  setState(() {
    _isHidden = !_isHidden;
  });
}}
