import 'package:flutter/material.dart';
import 'package:ui/widgets/itemList.dart';
import 'package:ui/widgets/sizedbox.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({super.key});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
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

  List Items = [
    // ItemLists(
    {
      "name": "Adidas | Tshirt",
      // 'subtitle': 'Davido',
      'price': '₹599',
      // "date": "Jul 24 02:06 PM",
      'img': 'assests/images/11.png',
    },
    {
      "name": "Nike | Tshirt",
      // 'subtitle': 'Davido',
      'price': '₹699',
      // "date": "Aug 25 08:06 PM",
      'img': 'assests/images/7.jpeg',
    },
    {
      "name": " Starbucks | Mug",
      // 'subtitle': 'Davido',
      'price': '₹699',
      // "date": "Aug 24 05:02 PM",
      'img': 'assests/images/9.jpeg',
    },
    {
      "name": "US Polo | Tshirt",
      // 'subtitle': 'Davido',
      'price': '₹999',
      // "date": "Jul 24 02:06 PM",
      'img': 'assests/images/88.png',
    },
    {
      "name": "Tea | Cup",
      // 'subtitle': 'Davido',
      'price': '₹699',
      // "date": "Aug 24 05:02 PM",
      'img': 'assests/images/9.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: Items.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Column(children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                        width: 110,
                        height: 110,
                        child: Image.asset(Items[index]['img'])),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 230,
                            child: Text(
                              Items[index]['name'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Icon(Icons.more_vert_rounded),
                        ],
                      ),
                      szdbx(ht: 8),
                      const Text(
                        '1 piece',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      szdbx(ht: 8),
                      Text(
                        '${Items[index]['price']}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      szdbx(ht: 8),
                      Row(
                        children: [
                          Container(
                            width: 200,
                            child: Text(
                              'In Stock',
                              style:
                                  TextStyle(fontSize: 19, color: Colors.green),
                            ),
                          ),
                          Switch(value: isSwitched, onChanged: toggleSwitch)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              divider(myht: 20, mythicknes: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.share_outlined),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Share Product',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      )),

                ],
              )
            ]),
          ),
        );
      },
      // itemCount: Items.length,
    );
  }
}
