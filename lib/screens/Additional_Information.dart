import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:ui/widgets/Custom_appbar.dart';

class Additional_Info extends StatefulWidget {
  Additional_Info({Key? key}) : super(key: key);

  @override
  State<Additional_Info> createState() => _Additional_InfoState();
}

class _Additional_InfoState extends State<Additional_Info> {
  bool isSwitched = false;

  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  List listItems = [
    'Share Dukaan App',
    'Change Language',
    'whatsapp Chat Support',
    'Privacy Policy',
    'Rate us',
    'Sign Out'
  ];

  List<Icon> listIcon = [
    const Icon(Icons.share_outlined, size: 30),
    const Icon(Icons.chat_bubble_outline_rounded, size: 30),
    const Icon(Icons.whatsapp, size: 30),
    const Icon(Icons.lock_outline_rounded, size: 30),
    const Icon(Icons.star_border, size: 30),
    const Icon(Icons.logout, size: 30)
  ];

  Widget MySwitch() {
    return Switch(value: isSwitched, onChanged: toggleSwitch);
  }

  Widget Pagelist() {
    return ListView.builder(
      itemBuilder: ((context, index) => ListTile(
            title: Text(
              '${listItems[index]}',
              style: TextStyle(fontSize: 19),
            ),
            leading: listIcon[index],
            trailing: change(index),
          )),
      itemCount: 6,
    );
  }

  Widget bottomText({required String mytext, required Color myColor}) {
    return Text(
      mytext,
      style: TextStyle(color: myColor),
    );
  }

  var szdbx = SizedBox(height: 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Custom_AppBar(
          myAppBarTitle: 'Additional Information',
          myAppBarIcon: Icon(null),
          elvtn: 5,
          bgclr: Colors.blue.shade800,
        ),
        body: Column(
          children: <Widget>[
            Expanded(child: Pagelist()),
            bottomText(mytext: 'Version', myColor: Colors.grey),
            szdbx,
            bottomText(mytext: '2.4.2', myColor: Colors.black),
            szdbx,
            // MySwitch(),
            // Switch(value: isSwitched, onChanged: toggleSwitch),
          ],
        ));
  }

  change(val) {
    switch (val) {
      case 0:
        return Icon(Icons.arrow_forward_ios_rounded);
      case 1:
        return Icon(Icons.arrow_forward_ios_rounded);
      case 2:
        return Switch(value: isSwitched, onChanged: toggleSwitch);
        break;
      default:
    }
  }
}
