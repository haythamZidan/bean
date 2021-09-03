import 'package:bean/theme/sharedFontStyle.dart';
import 'package:bean/theme/sharedcolors.dart';
import 'package:flutter/material.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  // ignore: non_constant_identifier_names
  List<Map<String, dynamic>> ListItem = [
    {
      'txt': 'My Profile',
      'Icon': Icons.account_circle,
    },
    {
      'txt': 'Setting',
      'Icon': Icons.settings,
    },
    {
      'txt': 'Contact Us',
      'Icon': Icons.phone,
    },
    {
      'txt': 'About Us',
      'Icon': Icons.info,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarAndButtonColor,
        title: Text('More', style: appBarButtonTextStyle),
      ),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: ListItem.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(ListItem[index]['icon'],
                    color: appBarAndButtonColor, size: 20.0),
                title: Text(
                  ListItem[index]['txt'],
                  style: mainTextStyle,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20.0,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
