import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    final imageUrl="D:\FlutterProjects\8_hr\catalog\assets\images\iphone.png";
 

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
                 accountName: Text("Devendra"),
                 accountEmail: Text("Chovatiyadevendra111@gmail.com"),
                 currentAccountPicture: CircleAvatar(
                   backgroundImage:NetworkImage(imageUrl)
                   ),
               ),
               ),
               Divider(color: Colors.white,thickness:3 ,),
               ListTile(
                 leading: Icon(
                   CupertinoIcons.home,
                   color:Colors.white,
                 ),
                 
                 title: Text("Home",
                 textScaleFactor:1.2,
                 style:TextStyle(color: Colors.white),
                 ),
               ),
               ListTile(
                 leading: Icon(
                   CupertinoIcons.profile_circled,
                   color:Colors.white,
                 ),
                 
                 title: Text("Profile",
                 textScaleFactor:1.2,
                 style:TextStyle(color: Colors.white),
                 ),
               ),
               ListTile(
                 leading: Icon(
                   CupertinoIcons.mail,
                   color:Colors.white,
                 ),
                 
                 title: Text("Mail Me",
                 textScaleFactor:1.2,
                 style:TextStyle(color: Colors.white),
                 ),
               
           
           ),
           ],
         ),
    ),
    );
  }
}