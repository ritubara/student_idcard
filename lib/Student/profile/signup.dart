import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  //const signup({Key key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Colors.green, Colors.blue]),),

        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,40,0,0),
          child: ListView(
            children: [
              CircleAvatar(radius: 72,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                    radius: 70,

                    backgroundImage:
                    NetworkImage("https://images.unsplash.com/photo-1427504494785-3a9ca7044f45?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(39, 30, 39, 0),
                child: Container(
                  child: TextField(
                    // obscureText: true,
                    decoration: InputDecoration(
                      //borderRadius: BorderRadius.all(Radius.circular(15)),

                      prefixIcon: Icon(CupertinoIcons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      labelText: 'Full Name',
                    ),
                  ),
                ),
              ),


              // Padding(
              //   padding: const EdgeInsets.fromLTRB(39, 30, 39, 0),
              //   child: Container(
              //     child: TextField(
              //       // obscureText: true,
              //       decoration: InputDecoration(
              //         //borderRadius: BorderRadius.all(Radius.circular(15)),
              //
              //         prefixIcon: Icon(Icons.email_outlined),
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.all(Radius.circular(20.0)),
              //         ),
              //         labelText: 'Branch/semester',
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(39, 30, 39, 0),
                child: Container(
                  child: TextField(
                    // obscureText: true,
                    decoration: InputDecoration(
                      //borderRadius: BorderRadius.all(Radius.circulr(15)),

                      prefixIcon: Icon(CupertinoIcons.mail),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      labelText: 'Email',
                    ),
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

                      prefixIcon: Icon(CupertinoIcons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      labelText: 'Password',
                    ),
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

                      prefixIcon: Icon(CupertinoIcons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      labelText: 'Confirm Password',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(70, 38, 70, 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.indigo[700],
                    // border: Border.all( width: 2.0),
                  ),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}