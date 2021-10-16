import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool play = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Positioned(
                top: 30,
                left: 10,
                child: Text(
                  'Demo App',
                  style: TextStyle(fontSize: 20),
                )),
            AnimatedPositioned(
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 1200),
              height: play ? 100 : 0,
              left: 0,
              right: 0,
              bottom: play ? MediaQuery.of(context).size.height / 2 : 0,
              child: Center(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Top',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 200),
              height: play ? 100 : 0,
              width: play ? MediaQuery.of(context).size.height / 2 : 0,
              left: 0,
              // right: 0,
              bottom: play ? MediaQuery.of(context).size.height / 2 : 0,
              child: Center(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.purple,
                  child: Center(
                    child: Text(
                      'Mid',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              height: play ? 100 : 0,
              left: 0,
              right: 0,
              bottom: play ? MediaQuery.of(context).size.height / 2 : 0,
              curve: Curves.slowMiddle,
              duration: Duration(milliseconds: 500),
              child: Center(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange.shade700,
                  child: Center(
                    child: Text(
                      'bottom',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              height: play ? 100 : 0,
              left: 0,
              right: 0,
              bottom: play ? MediaQuery.of(context).size.height / 2 : 0,
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 2000),
              child: Center(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.teal,
                  child: Center(
                    child: Text(
                      'Stack',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              play = !play;
            });
          }),
    );
  }
}
