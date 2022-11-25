// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/widgets/Custom_appbar.dart';
import 'package:ui/widgets/dukaanExpansionList.dart';
import 'package:ui/widgets/itemList.dart';
import 'package:ui/widgets/sizedbox.dart';

class DukaanPremium extends StatelessWidget {
  DukaanPremium({Key? key}) : super(key: key);

  List featureList = [
    ListItem(
      title: "Custom domain name",
      subtitle: 'Get your own domain and build your brand on the internet',
      icon: Icons.language_rounded,
    ),
    ListItem(
        title: "Verified seller brand",
        subtitle:
            'Get green verified badge under your store name and build trust',
        icon: Icons.verified_outlined),
    ListItem(
        title: "Dukaan for PC",
        subtitle: 'Access all the exclusive premium feature on Dukaan for PC',
        icon: Icons.computer_rounded),
    ListItem(
        title: "Priority Support",
        subtitle:
            'Get your question resolved with our priority customer support',
        icon: Icons.support_agent_rounded)
  ];

  Widget topCard() {
    return Container(
      height: 90,
      color: Colors.blue.shade800,
      child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 10.0,
              child: Container(
                height: 200.0,
                width: 365.0,
                child: Card(
                  // color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Column(
                      children: [
                        const szdbx(ht: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue.shade800,
                              child: const Icon(
                                Icons.local_mall_rounded,
                                color: Colors.white,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                'dukaan',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 35),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 90.0,
                          ),
                          child: Text(
                            'PREMIUM',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.blue.shade800),
                          ),
                        ),
                        const szdbx(ht: 9),
                        const Text(
                          'Get Dukaan Premium For just \n                 ₹4,999/ year',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        const szdbx(ht: 10),
                        const Text(
                          'All the advanced features for scaling your\n                             business.',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
    );
  }

  Widget dukaanFeature() {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Features',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
         const szdbx(ht: 10),
          ListFeature(),
        ],
      ),
    );
  }

  Widget ListFeature() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ListTile(
        leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue.shade800, width: 1.5),
              borderRadius: BorderRadius.circular(30)),
          child: Icon(
            featureList[index].icon,
            size: 35,
            color: Colors.blue.shade800,
          ),
        ),
        title: Text(
          '${featureList[index].title}',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          '${featureList[index].subtitle}',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
              letterSpacing: 0.5),
        ),
      ),
      itemCount: featureList.length,
    );
  }

  Widget dukaanImage() {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const szdbx(ht: 10),
          const Text(
            'What is Dukaan Premium?',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          const szdbx(ht: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assests/images/dukaan.png',
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomCard() {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Need help? Get in touch',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          szdbx(ht: 10),

          // padding: const EdgeInsets.all(12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey, width: 1)
                    // color: Colors.orange,
                    ),
                height: 110,
                width: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.chat_bubble_outline_rounded,
                      size: 50,
                    ),
                    Text(
                      'Live Chat',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey, width: 1)
                    // color: Colors.orange,
                    ),
                height: 110,
                width: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.call_outlined,
                      size: 50,
                    ),
                    Text(
                      'Live Chat',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget bottomBtn() {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Select Domain',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.blue.shade800),
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue.shade800),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Get Premium',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                )),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_AppBar(
        myAppBarTitle: 'Dukaan Premium',
        myAppBarIcon: const Icon(null),
        elvtn: 0,
        bgclr: Colors.blue.shade800,
      ),
      body: ListView(
        children: [
          topCard(),
          const szdbx(ht: 130),
          dukaanFeature(),
          divider(myht: 30, mythicknes: 5),
          dukaanImage(),
          const dukaanExpansionList(),
          divider(myht: 50, mythicknes: 5),
          bottomCard(),
          divider(myht: 50, mythicknes: 2),
          bottomBtn(),
        ],
      ),
    );
  }
}

class ListItem {
  String title;
  String subtitle;
  IconData icon;
  ListItem({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}
