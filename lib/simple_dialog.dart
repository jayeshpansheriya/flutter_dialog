import 'package:flutter/material.dart';

class Simple extends StatefulWidget {
  @override
  _SimpleState createState() => _SimpleState();
}

class _SimpleState extends State<Simple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Simple Dialog'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new RaisedButton(
                onPressed: () => _showSimpleDialog(),
                child: new Text("Click me"),
              )
            ],
          ),
        ),
      ),
    );
  }

  _showSimpleDialog() {
    showDialog(
        context: context,
        child: new SimpleDialog(
          title: new Text("Do you like flutter?"),
          children: <Widget>[
            new SimpleDialogOption(
              child: new Text("Yes"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            new SimpleDialogOption(
              child: new Text("No"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            new SimpleDialogOption(
              child: new Text("Maybe"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        )
    );
  }
}
