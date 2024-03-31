// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations, non_constant_identifier_names, unused_local_variable, avoid_web_libraries_in_flutter, deprecated_member_use

//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Url =
        "https://scontent.fdac5-2.fna.fbcdn.net/v/t39.30808-6/368315346_334337352280742_6909878949909056019_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEMJzQpTH28HXUi6xqydn5g7nl4N6W62x7ueXg3pbrbHrcv05yrqPa386b_PvphxfxZ1r7Y9--0v5Dwl9SVKvFk&_nc_ohc=83uiuxcxL4YAX-B_9hp&_nc_ht=scontent.fdac5-2.fna&oh=00_AfAx6ojin3SY1I_9hbJQzov9SVzyn1-DHLIhL9gzZxy3oA&oe=660E4F16";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(color: Colors.deepPurple),
                    accountName: Text("Shafi"),
                    accountEmail: Text("shafihossain072@gmail.com"),
                    
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(Url),
                      
                    ))),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: Text(
                "Settings",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
