import 'package:flutter/material.dart';
import 'package:ui/widgets/sizedbox.dart';

class Step {
  Step(this.title, this.body, [this.isExpanded = false]);
  String title;
  String body;
  bool isExpanded;
}

List<Step> getSteps() {
  return [
    Step('What types of businesses can use Dukaan Premium?',
        'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.'),
    Step('What is your refund policy?',
        'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.'),
    Step('Will there be an automatic charge after the paid trial?',
        'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.'),
    Step('What payment methods do you offer?',
        'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.'),
    Step('What happens when my free trial ends?',
        'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.'),
    Step('What are the terms for the custom domain?',
        'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.'),
  ];
}

class dukaanExpansionList extends StatefulWidget {
  const dukaanExpansionList({Key? key}) : super(key: key);
  @override
  State<dukaanExpansionList> createState() => _dukaanExpansionListState();
}

class _dukaanExpansionListState extends State<dukaanExpansionList> {
  final List<Step> _steps = getSteps();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _renderSteps(),
      ),
    );
  }

  Widget _renderSteps() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(13.0),
          child: Text(
            'Frequently Asked questions',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        szdbx(ht: 10),
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _steps[index].isExpanded = !isExpanded;
            });
          },
          children: _steps.map<ExpansionPanel>((Step step) {
            return ExpansionPanel(
              canTapOnHeader: true,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(
                    step.title,
                    style: const TextStyle(
                        fontSize: 18.5, fontWeight: FontWeight.w500),
                  ),
                );
              },
              body: ListTile(
                title: Text(
                  step.body,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade600),
                ),
              ),
              isExpanded: step.isExpanded,
            );
          }).toList(),
        ),
      ],
    );
  }
}
