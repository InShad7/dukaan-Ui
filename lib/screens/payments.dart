// import 'dart:js';

import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:ui/widgets/Custom_appbar.dart';
import 'package:ui/widgets/expansionList.dart';
import 'package:ui/widgets/itemList.dart';
import 'package:ui/widgets/sizedbox.dart';

class payments extends StatefulWidget {
  payments({Key? key}) : super(key: key);

  @override
  State<payments> createState() => _paymentsState();
}

class _paymentsState extends State<payments> {
  Widget topCard() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 210,
        width: 500,
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Color.fromARGB(255, 213, 212, 212)),
              borderRadius: BorderRadius.circular(6)),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Transaction Limit',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const szdbx(ht: 10),
                const Text(
                  'A free limit up to which you will receive the online payments directly in your bank',
                  style: TextStyle(fontSize: 15),
                ),
                const szdbx(ht: 10),
                percentageBar(),
                const szdbx(ht: 10),
                const Text(
                  '36,668 left out of ₹50,000',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const szdbx(ht: 10),
                btn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget percentageBar() {
    return LinearPercentIndicator(
      padding: EdgeInsets.symmetric(horizontal: 0),

      // animation: true,
      // animationDuration: 1000,
      lineHeight: 9.0,
      percent: 30 / 100,
      barRadius: const Radius.circular(16),
      progressColor: Colors.blue[800],
      backgroundColor: Colors.grey[300],
    );
  }

  Widget btn() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade800),
        onPressed: () {},
        child: const Text(
          'Increase limit',
          style: TextStyle(fontSize: 20),
        ));
  }

  Widget CenterBtn() {
    return Container(
        // color: Colors.yellow,
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(13.0),
          child: Text(
            'Transactions',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            chips(chipName: '   Hold On   ', NameColor: Colors.black54),
            chips(
                chipName: '   Payouts(15)   ',
                ChipColor: Colors.blue.shade800,
                NameColor: Colors.white),
            chips(chipName: '   Refunds   ', NameColor: Colors.black54)
          ],
        )
      ],
    ));
  }

  Widget chips({required chipName, ChipColor, NameColor}) {
    return Chip(
      label: Text(
        chipName,
        style: TextStyle(fontSize: 18, color: NameColor),
      ),
      backgroundColor: ChipColor,
    );
  }

  // Widget radioBtn() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
  //     children: [
  //       CustomRadioButton(
  //         shapeRadius: 20,
  //         elevation: 0,
  //         absoluteZeroSpacing: true,
  //         unSelectedColor: Colors.grey,
  //         buttonLables: const [
  //           'Hold On',
  //           'PayOuts(15)',
  //           'Refunds',
  //         ],
  //         buttonValues: const [
  //           'Hold On',
  //           'PayOuts(15)',
  //           'Refunds',
  //         ],
  //         buttonTextStyle: const ButtonTextStyle(
  //             selectedColor: Colors.white,
  //             unSelectedColor: Colors.black54,
  //             textStyle: TextStyle(fontSize: 18)),
  //         radioButtonValue: (value) {
  //           print(value);
  //         },
  //         selectedColor: Theme.of(context).accentColor,
  //         // enableButtonWrap: false,
  //       ),
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_AppBar(
        myAppBarTitle: 'Payments',
        myAppBarIcon: Icon(Icons.info_outline_rounded),
        elvtn: 5,
        bgclr: Colors.blue.shade800,
      ),
      body: ListView(
        children: [
          topCard(),
          const Steps(),
          CenterBtn(),
          // radioBtn(),
          const itemList(),
        ],
      ),
    );
  }
}
