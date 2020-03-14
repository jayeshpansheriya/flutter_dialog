import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDemo extends StatefulWidget {
  @override
  _AlertDemoState createState() => _AlertDemoState();
}

class _AlertDemoState extends State<AlertDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Alert Dialog'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new RaisedButton(
                onPressed: () => _showAlertDialog(),
                child: new Text("Click me"),
              )
            ],
          ),
        ),
      ),
    );
  }

  _showAlertDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Alert Dialog"),
            content: Text("Dialog Content"),
            actions: [
              FlatButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }
    );
  }


  // cupertino alert dialog
  // _showAlertDialog() {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return CupertinoAlertDialog(
  //           title: new Text("Dialog Title"),
  //           content: new Text("This is my content"),
  //           actions: <Widget>[
  //             CupertinoDialogAction(
  //               isDefaultAction: true,
  //               child: Text("Yes"),
  //             ),
  //             CupertinoDialogAction(
  //               child: Text("No"),
  //             )
  //           ],
  //         );
  //       });
  // }
}
