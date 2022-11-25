import 'package:flutter/material.dart';
import 'package:ui/widgets/Custom_appbar.dart';
import 'package:ui/widgets/itemList.dart';
import 'package:ui/widgets/sizedbox.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  Widget topDate() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          'May 31, 05:42 PM',
          style: TextStyle(fontSize: 22),
        ),
        Row(
          children: [
            Icon(
              Icons.circle,
              size: 22,
              color: Colors.blue.shade800,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Delivered',
                style: TextStyle(fontSize: 22, color: Colors.grey.shade600),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget itemDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13, right: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '1 ITEM',
                style: TextStyle(fontSize: 20),
              ),
              Row(
                children: [
                  Icon(
                    Icons.receipt,
                    size: 30,
                    color: Colors.blue.shade800,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'RECEIPT',
                      style:
                          TextStyle(fontSize: 20, color: Colors.blue.shade800),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        detailCard(),
        // divider(myht: 20, mythicknes: 1),
      ],
    );
  }

  Widget detailCard() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Container(
            width: 80,
            height: 90,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Image.asset('assests/images/11.png'),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const szdbx(ht: 20),
            const Text(
              'Explore | Men |  NavyBlue',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            ),
            const szdbx(ht: 10),
            Text(
              '1 piece',
              style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
            ),
            const szdbx(ht: 10),
            Text(
              'Size: XL',
              style: TextStyle(fontSize: 19, color: Colors.grey.shade500),
            ),
            const szdbx(ht: 7),
            Row(
              children: [
                Icon(
                  Icons.looks_one_outlined,
                  size: 30,
                  color: Colors.blue.shade800,
                ),
                const Text(
                  'X ₹799',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 170.0),
                  child: Text(
                    '₹799',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget total() {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'item Total',
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey.shade700,
              ),
            ),
            const Text(
              '₹799',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
          ]),
          szdbx(ht: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey.shade700,
                ),
              ),
              Text(
                'FREE',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.green.shade400,
                ),
              ),
            ],
          ),
          szdbx(ht: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Grand Total',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey.shade700,
                ),
              ),
              const Text(
                '₹799',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget address() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13.0, right: 13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'CUSTOMER DETAILS',
                style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
              ),
              Row(
                children: [
                  Icon(
                    Icons.share_outlined,
                    size: 30,
                    color: Colors.blue.shade800,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'SHARE',
                      style:
                          TextStyle(fontSize: 20, color: Colors.blue.shade800),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        szdbx(ht: 10),
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Deepa',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.call_outlined,
                        size: 35,
                        color: Colors.blue.shade800,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(
                          Icons.whatsapp_outlined,
                          size: 35,
                          color: Colors.green.shade600,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Text(
                '+91-123456789',
                style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
              ),
              const szdbx(ht: 22),
              const Text(
                'Address',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              const szdbx(ht: 15),
              Text(
                'D 1011 Chartered Beverly Hills,Subramanyapura P.O',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey.shade700,
                ),
              ),
              const szdbx(ht: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'City',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 100.0),
                    child: Text(
                      'Pincode',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              const szdbx(ht: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bangalore',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100.0),
                    child: Text(
                      '560061',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ],
              ),
              const szdbx(ht: 20),
              const Text(
                'Payment',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              const szdbx(ht: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Online',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Text(
                          'PAID',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.green.shade600),
                          // textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget info() {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ADDITIONAL INFORMATION',
            style: TextStyle(
              fontSize: 22,
              color: Colors.grey.shade700,
            ),
          ),
          szdbx(ht: 33),
          Text(
            'State',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          szdbx(ht: 10),
          Text(
            'Karnataka',
            style: TextStyle(
              fontSize: 22,
              color: Colors.grey.shade700,
            ),
          ),
          szdbx(ht: 20),
          Text(
            'Email',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          szdbx(ht: 10),
          Text(
            'abc@gmail.com',
            style: TextStyle(
              fontSize: 22,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }

  Widget receipt() {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        width: 50,
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            'Share Receipt',
            style: TextStyle(
              fontSize: 22,
              color: Colors.blue.shade600,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_AppBar(
          myAppBarTitle: 'Order #1688068',
          myAppBarIcon: Icon(null),
          elvtn: 5,
          bgclr: Colors.blue.shade800),
      body: ListView(
        children: [
          const szdbx(ht: 20),
          topDate(),
          divider(myht: 60, mythicknes: 1),
          itemDetails(),
          divider(myht: 50, mythicknes: 1),
          total(),
          divider(myht: 50, mythicknes: 1),
          address(),
          divider(myht: 50, mythicknes: 1),
          info(),
          receipt()
        ],
      ),
    );
  }
}
