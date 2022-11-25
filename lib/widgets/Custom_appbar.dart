import 'package:flutter/material.dart';

class Custom_AppBar extends StatelessWidget implements PreferredSizeWidget {
  const Custom_AppBar({
    Key? key,
    required this.myAppBarTitle,
    required this.myAppBarIcon,
    required this.elvtn, required this.bgclr,
  }) : super(key: key);

  final String myAppBarTitle;
  final Icon myAppBarIcon;
  final double elvtn;
  final Color bgclr;

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elvtn,
      title: Text(myAppBarTitle),
      actions: [
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: myAppBarIcon,
        )
      ],
      centerTitle: true,
      backgroundColor: bgclr,
    );
  }
}
