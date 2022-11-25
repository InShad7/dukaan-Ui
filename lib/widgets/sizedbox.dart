import 'package:flutter/cupertino.dart';

// var szdbx = szdbx();

class szdbx extends StatelessWidget {
  final double ht;
  const szdbx({
    Key? key,
    required this.ht,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ht,
    );
  }
}
