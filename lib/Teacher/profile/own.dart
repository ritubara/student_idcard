import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:studentidpass/Student/Login/login.dart';

class techpro extends StatefulWidget {
  @override
  _techproState  createState() => _techproState();
}

class _techproState extends State<techpro> {

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
                    Text("Student", style: TextStyle(color: Colors.white,fontSize: 20,),),
                    SizedBox(width: 250,),
                    Icon(Icons.edit,color: Colors.white,),
                    Icon(CupertinoIcons.bell_solid, color: Colors.white,)
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                height: 612.90,
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
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                  children: [
                                    CircleAvatar(radius: 72,
                                      backgroundColor: Colors.white,
                                      child: ClipRRect(
                                        child: Image.asset("images/pic.png",
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(70.0),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(98,100,0,0),
                                      child: CircleAvatar(radius: 25,
                                        backgroundColor: Colors.indigo,
                                        child:  FloatingActionButton(
                                            onPressed: (){},
                                            child: Icon(CupertinoIcons.camera_rotate, color: Colors.white,)
                                        ),
                                      ),
                                    ),
                                  ]),
                              Text("Adi Kujur", style: TextStyle(color: Colors.black,fontSize: 20,),),
                              Text("adi@xuc.com", style: TextStyle(color: Colors.grey,fontSize: 15,),),
                            ],
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
                        height: 290,
                        child: ListView(children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                Card(
                                  child: Container(
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      borderRadius: BorderRadius.all(Radius.circular(8.0),),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Colors.grey[400], Colors.greenAccent[100]],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        child: Image.asset(
                                          "images/logout.png",
                                          height: 80,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Educational Information",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80.0),
                                  child: Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.black,
                                    size: 19,
                                  ),
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                Card(
                                  child: Container(
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      borderRadius: BorderRadius.all(Radius.circular(8.0),),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Colors.grey[400], Colors.greenAccent[100]],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        child: Image.asset(
                                          "images/logout.png",
                                          height: 80,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Educational Information",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80.0),
                                  child: Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.black,
                                    size: 19,
                                  ),
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                Card(
                                  child: Container(
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      borderRadius: BorderRadius.all(Radius.circular(8.0),),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Colors.grey[400], Colors.greenAccent[100]],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        child: Image.asset(
                                          "images/logout.png",
                                          height: 80,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Educational Information",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80.0),
                                  child: Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.black,
                                    size: 19,
                                  ),
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                Card(
                                  child: Container(
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      borderRadius: BorderRadius.all(Radius.circular(8.0),),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Colors.grey[400], Colors.greenAccent[100]],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        child: Image.asset(
                                          "images/logout.png",
                                          height: 80,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Educational Information",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80.0),
                                  child: Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.black,
                                    size: 19,
                                  ),
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                Card(
                                  child: Container(
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      borderRadius: BorderRadius.all(Radius.circular(8.0),),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Colors.grey[400], Colors.greenAccent[100]],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        child: Image.asset(
                                          "images/logout.png",
                                          height: 80,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Educational Information",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80.0),
                                  child: Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.black,
                                    size: 19,
                                  ),
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                Card(
                                  child: Container(
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      borderRadius: BorderRadius.all(Radius.circular(8.0),),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Colors.grey[400], Colors.greenAccent[100]],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        child: Image.asset(
                                          "images/logout.png",
                                          height: 80,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Educational Information",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80.0),
                                  child: Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.black,
                                    size: 19,
                                  ),
                                )
                              ],
                            ),
                          ),

                        ]),
                      ),
                ]),
              ),
            ),
      ]),
    );
  }
}
