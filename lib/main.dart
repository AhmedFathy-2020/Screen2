import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyWidget()));
}

class MyWidget extends StatelessWidget {
  /////////////////////////////////////////////////////////////////////////////////////////////////
  createAlertDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 118, 238, 128),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: EdgeInsets.only(top: 20.0),
            insetPadding: EdgeInsets.only(top: 20),
            title: Text('Hosting ID..'),
            content: TextField(
              controller: customController,
            ),
            actions: <Widget>[
              MaterialButton(
                elevation: 5,
                child: Text('OK'),
                onPressed: () {},
              )
            ],
          );
        });
    ///////////////////////////////////////////////////////////////////////////////////dialog
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 46, 35, 35),
          leading: Icon(Icons.account_tree_outlined),
          title: Text('Multi Devices'),
        ),
        ////////////////////////////////////////////////////////////////////////////APPbar
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('space_1.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          //////////////////////////////////////////////////////////////////////////// backGround
          child: ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 250,
                  child: Card(
                    child: Image.asset(
                      'space_22.jpeg',
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 15,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                ////////////////////////////////////////////////////////////////container and card image
                ButtonTheme(
                  shape: StadiumBorder(),
                  minWidth: 200.0,
                  height: 100.0,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "HOST",
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Color.fromARGB(255, 126, 255, 137),
                    textColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                /////////////////////////////////////////////////////////////// host button
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                ///////////////////////////////////////////////////////////// size box
                ButtonTheme(
                  shape: StadiumBorder(),
                  minWidth: 200,
                  height: 100,
                  child: RaisedButton(
                    onPressed: () {
                      createAlertDialog(context);
                    },
                    child: Text(
                      'Member',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Color.fromARGB(255, 126, 255, 137),
                    textColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                //////////////////////////////////////////////////////////////// member button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
