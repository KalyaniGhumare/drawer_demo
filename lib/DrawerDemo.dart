import 'package:drawer_demo/AllEmailScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DrawerDemo extends StatefulWidget {
  @override
  DrawerDemoState createState() => DrawerDemoState();
}

class DrawerDemoState extends State<DrawerDemo> {

  /*
  * Create Single Widget
  * */
  listTileWidget(String name, IconData iconData)
  {
    return ListTile(
      leading: Icon(
        iconData,
        color: Colors.blue,
        size: 28.0,
      ),
      onTap: ()
      {
        Navigator
            .push(context,
            MaterialPageRoute(
            builder: (context) => AllEmailScreen(value1: 100, value2: 'Param')));
      },
      title: Text(name, style: TextStyle(fontSize: 18.0, fontFamily: 'roboto'),),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Demo'),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                height: 250.0,
                color: Colors.blue[100],
                child: Container(
                  margin: EdgeInsets.only(top: 50.0, left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      /*
                    * Image
                    * */
                      Image.asset(
                        'assets/images/as.png',
                        height: 120.0,
                        width: 120.0,
                        alignment: Alignment.topLeft,
                      ),
                      SizedBox(height: 12.0),
                      Text('Shubham B',
                          style: TextStyle(fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                          fontFamily: 'helveticanormal')),
                      SizedBox(height: 2.0),
                      Text('shubham@gmail.com',
                        style: TextStyle(fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'roboto'),)
                    ],
                  ),
                )
              ),
              SizedBox(height: 10.0),
              listTileWidget('Inbox', Icons.move_to_inbox, /*MaterialPageRoute(builder: (context) => AllEmailScreen()*/),
              listTileWidget('Starred', Icons.star),
              listTileWidget('Sent Email', Icons.send),
              listTileWidget('Draft', Icons.drafts),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Divider(height:9.0,color: Colors.grey)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Subheader',
                  style: TextStyle(
                    fontFamily: 'roboto',
                    fontSize: 18.0,
                    color: Colors.grey
                  ),
                ),
              ),
              listTileWidget('All Email', Icons.email),
              listTileWidget('Trash', Icons.delete),
              listTileWidget('Spam', Icons.do_not_disturb),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue
              ),
            ),
          ),
        ),
      ),
    );
  }
}
