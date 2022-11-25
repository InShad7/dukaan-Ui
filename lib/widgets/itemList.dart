import 'package:flutter/material.dart';

List Items = [
  // ItemLists(
  {
    "title": "Order #5458115644",
    'subtitle': 'Davido',
    'trailing': '599',
    "date": "Jul 24 02:06 PM",
    'img': 'assests/images/11.png',
  },
  {
    "title": "Order #5458115654",
    'subtitle': 'Davido',
    'trailing': '699',
    "date": "Aug 25 08:06 PM",
    'img': 'assests/images/7.jpeg',
  },
  {
    "title": "Order #5458115644",
    'subtitle': 'Davido',
    'trailing': '999',
    "date": "Jul 24 02:06 PM",
    'img': 'assests/images/88.png',
  },
  {
    "title": "Order #5458115654",
    'subtitle': 'Davido',
    'trailing': '499',
    "date": "Aug 25 08:06 PM",
    'img': 'assests/images/9.jpeg',
  },
  {
    "title": "Order #5458115644",
    'subtitle': 'Davido',
    'trailing': '599',
    "date": "Jul 24 02:06 PM",
    'img': 'assests/images/55.png',
  },
  {
    "title": "Order #5458115654",
    'subtitle': 'Davido',
    'trailing': '699',
    "date": "Aug 25 08:06 PM",
    'img': 'assests/images/7.jpeg',
  },
  {
    "title": "Order #5458111421",
    'subtitle': 'Davido',
    'trailing': '799',
    "date": "Jul 24 02:06 PM",
    'img': 'assests/images/11.png',
  },
  {
    "title": "Order #5458115654",
    'subtitle': 'Davido',
    'trailing': '999',
    "date": "Jul 24 02:06 PM",
    'img': 'assests/images/88.png',
  },
  {
    "title": "Order #5458111768",
    'subtitle': 'Davido',
    'trailing': '599',
    "date": "Jul 24 02:06 PM",
    'img': 'assests/images/9.jpeg',
  },
  {
    "title": "Order #5458111421",
    'subtitle': 'Davido',
    'trailing': '499',
    "date": "Jul 24 02:06 PM",
    'img': 'assests/images/7.jpeg',
  },
  {
    "title": "Order #5458115654",
    'subtitle': 'Davido',
    'trailing': '599',
    "date": "Jul 24 02:06 PM",
    'img': 'assests/images/55.png',
  },
  {
    "title": "Order #5458111421",
    'subtitle': 'Davido',
    'trailing': '499',
    "date": "Jul 24 02:06 PM",
    'img': 'assests/images/88.png',
  },
  {
    "title": "Order #5458115654",
    'subtitle': 'Davido',
    'trailing': '899',
    "date": "Jul 24 02:06 PM",
    'img': 'assests/images/7.jpeg',
  },
  {
    "title": "Order #5458115644",
    'subtitle': 'Davido',
    'trailing': '699',
    "date": "Aug 24 05:02 PM",
    'img': 'assests/images/9.jpeg',
  },
  {
    "title": "Order #5458111421",
    'subtitle': 'Davido',
    'trailing': '599',
    "date": "Aug 25 08:06 PM",
    'img': 'assests/images/11.png',
  }
];

class itemList extends StatelessWidget {
  const itemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: ((context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 50,
                    minHeight: 50,
                    maxWidth: 50,
                    maxHeight: 50,
                  ),
                  child: Image.asset(Items[index]['img']),
                ),
                title: Text(Items[index]['title']),
                subtitle: Text(Items[index]['date']),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '₹${Items[index]["trailing"]}',
                      style: TextStyle(
                          color: Colors.blue.shade800,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.circle,
                          size: 12,
                          color: Colors.green,
                        ),
                        Text(
                          "  Sucessfull",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 133, 132, 132)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Text(
                  "₹${Items[index]["trailing"]} deposited to 11445428565",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 133, 132, 132)),
                ),
              ),
              divider(myht: 0, mythicknes: 0),
            ],
          )),
      itemCount: Items.length,
    );
  }
}

Widget divider({required double myht, required double mythicknes}) {
  return Divider(
    height: myht,
    thickness: mythicknes,
    indent: 13,
    endIndent: 13,
  );
}
