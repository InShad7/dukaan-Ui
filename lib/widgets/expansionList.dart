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
    Step('Default Method', 'Online Payment'),
    Step('Payment Pofile', 'Bank Acoount'),
    Step('Payment Overview', 'Life Time'),
  ];
}

class Steps extends StatefulWidget {
  const Steps({Key? key}) : super(key: key);
  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
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
    return ExpansionPanelList(
      elevation: 0,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _steps[index].isExpanded = !isExpanded;
        });
      },
      children: _steps.map<ExpansionPanel>((Step step) {
        return ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: ListTile(
                title: Text(
                  step.title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400),
                ),
                trailing: Text(
                  step.body,
                  style: const TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            );
          },
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.orange,
                  ),
                  height: 95,
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropText(
                            dropName: 'AMOUNT ON HOLD',
                            size: 18,
                            weightFont: FontWeight.w300),
                        szdbx(ht: 7),
                        DropText(
                            dropName: '₹0',
                            size: 30,
                            weightFont: FontWeight.bold)
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.green,
                  ),
                  height: 95,
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropText(
                            dropName: 'AMOUNT RECEIVED',
                            size: 18,
                            weightFont: FontWeight.w300),
                        szdbx(ht: 7),
                        DropText(
                            dropName: '₹13,332',
                            size: 30,
                            weightFont: FontWeight.bold)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          isExpanded: step.isExpanded,
        );
      }).toList(),
    );
  }

  Widget DropText(
      {required String dropName, required double size, weightFont}) {
    return Text(
      dropName,
      style: TextStyle(
          fontSize: size, color: Colors.white, fontWeight: weightFont),
    );
  }
}
