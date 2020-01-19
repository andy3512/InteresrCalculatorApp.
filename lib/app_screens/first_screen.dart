import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepPurple,
            // width: 200.0,
            //height: 100.0,

            child: Column(children: <Widget>[
              Row(children: <Widget>[
                Expanded(
                    child: Text(
                  "Andy",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.cyanAccent,
                    fontSize: 20.0
                  ),
                )),
              ]),
              Row(children: <Widget>[Expanded(child: image())]),
              button()

            ])));
  }
}

class image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/andy2.JPG');
    Image image = Image(
      image: assetImage,
      width: 300.0,
      height: 250.0,
    );
    return Container(
      child: image,
    );
  }
}
class button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text(
            "Download",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        elevation: 6.0,
        onPressed: (){
           download(context);
        },
      )
    );
  }
  void download(BuildContext context){
    var mess=AlertDialog(
      title: Text("Your downloaded successfully"),
      content: Text("Andy"),
    );

    showDialog(
      context: context,
      builder: (BuildContext context){
        return mess;
      }
    );
  }
}