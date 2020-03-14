import 'package:flutter/material.dart';

class Custom extends StatefulWidget {
  @override
  _CustomState createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Custom Dialog'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new RaisedButton(
                onPressed: () => _showCustomDialog(),
                child: new Text("Click me"),
              )
            ],
          ),
        ),
      ),
    );
  }
  _showCustomDialog(){
    showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(20.0)), //this right here
        child: Container(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'What do you want to remember?'),
                ),
                SizedBox(
                  width: 320.0,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: const Color(0xFF1BC0C5),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });

  }
}