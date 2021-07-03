import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studentidpass/Student/Login/login.dart';

class editpro extends StatefulWidget {
  @override
  _editproState  createState() => _editproState();
}

class _editproState extends State<editpro> {
  TextEditingController PhoneNumber = new TextEditingController();
  var Dataoutput;
  var charLength = 0;
  bool MaxLENTHSackti = false;

  int _currentIndex = 0;

  double _rating;

  double _userRating = 3.0;
  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;
  bool _isVertical = false;

  @override
  Widget build(BuildContext context) {
    var items;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: colorScheme.surface,
        selectedItemColor: colorScheme.onSurface,
        unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(CupertinoIcons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Notes'),
            icon: Icon(CupertinoIcons.doc_on_clipboard_fill),
          ),
          BottomNavigationBarItem(
            title: Text('Class'),
            icon: Icon(CupertinoIcons.rectangle_stack_person_crop_fill),
          ),
          BottomNavigationBarItem(
            title: Text('Profile'),
            icon: Icon(CupertinoIcons.person_alt_circle),
          ),
        ],
      ),

      body: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0,left: 20),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back,color: Colors.white,),
                    SizedBox(width: 50,),
                    Text("Edit Student Profile", style: TextStyle(color: Colors.white,fontSize: 20,),),
                    SizedBox(width: 120,),
                    Icon(CupertinoIcons.bell_solid, color: Colors.white,)
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                height: 550.90,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(30.0),
                      topRight: const Radius.circular(30.0),
                    )
                ),
                child: Column(
                    children: [
                      // profile
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Container(
                          child: CircleAvatar(radius: 72,
                            backgroundColor: Colors.blueGrey,
                            child: ClipRRect(
                              child: Image.asset("images/pic.png",
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(70.0),
                            ),
                          ),
                        ),
                      ),

                      // add rice
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,top: 10),
                        child: Row(
                          children: [
                            Card(
                              color: Colors.lightGreen[300],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Container(
                                width: 180,
                                height: 80,
                                // decoration: BoxDecoration(
                                //     color: Colors.white,
                                //     borderRadius: BorderRadius.all(Radius.circular(20.0),),
                                // ),
                                padding: EdgeInsets.fromLTRB(15, 14, 0, 10),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("University",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text("Banaras Hindu University",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),

                                    ]),
                              ),
                            ),

                            SizedBox(width: 10),

                            Card(
                              color: Colors.lightBlue[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Container(
                                width: 180,
                                height: 80,
                                // decoration: BoxDecoration(
                                //     color: Colors.white,
                                //     borderRadius: BorderRadius.all(Radius.circular(20.0),),
                                // ),
                                padding: EdgeInsets.fromLTRB(15, 14, 0, 10),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("University",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text("Banaras Hindu University",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),

                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        height: 280,
                        child: ListView(children: [

                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,10,10,0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(13),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment
                                        .bottomCenter, // 10% of the width, so there are ten blinds.
                                    colors: [
                                      const Color(0xffeeDBE6F6),
                                      const Color(0xffeeDBE6F6),
                                    ], // red to yellow
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                                color: Colors.black45, width: 1.10)),
                                      ),
                                      child: Center(child: Text("+91")),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: TextField(
                                          controller: PhoneNumber,
                                          keyboardType: TextInputType.phone,
                                          textAlign: TextAlign.left,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'PHONE NUMBER',
                                            hintStyle: GoogleFonts.abhayaLibre(),
                                          ),
                                          // onChanged: _onChanged,
                                          // inputFormatters: [
                                          //   LengthLimitingTextInputFormatter(10)
                                          // ],
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,10,10,0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(13),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment
                                        .bottomCenter, // 10% of the width, so there are ten blinds.
                                    colors: [
                                      const Color(0xffeeDBE6F6),
                                      const Color(0xffeeDBE6F6),
                                    ], // red to yellow
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                                color: Colors.black45, width: 1.10)),
                                      ),
                                      child: Center(child: Text("+91")),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: TextField(
                                          controller: PhoneNumber,
                                          keyboardType: TextInputType.phone,
                                          textAlign: TextAlign.left,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'PHONE NUMBER',
                                            hintStyle: GoogleFonts.abhayaLibre(),
                                          ),
                                          // onChanged: _onChanged,
                                          // inputFormatters: [
                                          //   LengthLimitingTextInputFormatter(10)
                                          // ],
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,10,10,0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(13),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment
                                        .bottomCenter, // 10% of the width, so there are ten blinds.
                                    colors: [
                                      const Color(0xffeeDBE6F6),
                                      const Color(0xffeeDBE6F6),
                                    ], // red to yellow
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                                color: Colors.black45, width: 1.10)),
                                      ),
                                      child: Center(child: Text("+91")),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: TextField(
                                          controller: PhoneNumber,
                                          keyboardType: TextInputType.phone,
                                          textAlign: TextAlign.left,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'PHONE NUMBER',
                                            hintStyle: GoogleFonts.abhayaLibre(),
                                          ),
                                          // onChanged: _onChanged,
                                          // inputFormatters: [
                                          //   LengthLimitingTextInputFormatter(10)
                                          // ],
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,10,10,0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(13),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment
                                        .bottomCenter, // 10% of the width, so there are ten blinds.
                                    colors: [
                                      const Color(0xffeeDBE6F6),
                                      const Color(0xffeeDBE6F6),
                                    ], // red to yellow
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                                color: Colors.black45, width: 1.10)),
                                      ),
                                      child: Center(child: Text("+91")),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: TextField(
                                          controller: PhoneNumber,
                                          keyboardType: TextInputType.phone,
                                          textAlign: TextAlign.left,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'PHONE NUMBER',
                                            hintStyle: GoogleFonts.abhayaLibre(),
                                          ),
                                          // onChanged: _onChanged,
                                          // inputFormatters: [
                                          //   LengthLimitingTextInputFormatter(10)
                                          // ],
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,10,10,0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(13),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment
                                        .bottomCenter, // 10% of the width, so there are ten blinds.
                                    colors: [
                                      const Color(0xffeeDBE6F6),
                                      const Color(0xffeeDBE6F6),
                                    ], // red to yellow
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                                color: Colors.black45, width: 1.10)),
                                      ),
                                      child: Center(child: Text("+91")),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: TextField(
                                          controller: PhoneNumber,
                                          keyboardType: TextInputType.phone,
                                          textAlign: TextAlign.left,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'PHONE NUMBER',
                                            hintStyle: GoogleFonts.abhayaLibre(),
                                          ),
                                          // onChanged: _onChanged,
                                          // inputFormatters: [
                                          //   LengthLimitingTextInputFormatter(10)
                                          // ],
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,10,10,0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(13),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment
                                        .bottomCenter, // 10% of the width, so there are ten blinds.
                                    colors: [
                                      const Color(0xffeeDBE6F6),
                                      const Color(0xffeeDBE6F6),
                                    ], // red to yellow
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                                color: Colors.black45, width: 1.10)),
                                      ),
                                      child: Center(child: Text("+91")),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: TextField(
                                          controller: PhoneNumber,
                                          keyboardType: TextInputType.phone,
                                          textAlign: TextAlign.left,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'PHONE NUMBER',
                                            hintStyle: GoogleFonts.abhayaLibre(),
                                          ),
                                          // onChanged: _onChanged,
                                          // inputFormatters: [
                                          //   LengthLimitingTextInputFormatter(10)
                                          // ],
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ]),
                      ),
                    ]),
              ),
            ),

            Container(
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.blue[900],
                    // borderRadius: BorderRadius.circular(30)),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Center(
                  child: FlatButton(
                    onPressed: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => vfycode()));
                    },
                    child: Text("UPDATE &  CONTINUE",
                        style: GoogleFonts.abhayaLibre(
                            color: Colors.white, fontSize: 15.0)),
                  ),
                )),

          ]),
    );
  }
}


