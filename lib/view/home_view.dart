import 'package:accelerhealth/custom_widget/header.dart';
import 'package:accelerhealth/custom_widget/key_pad.dart';
import 'package:accelerhealth/custom_widget/nav_items.dart';
import 'package:accelerhealth/custom_widget/transaction_type_container.dart';
import 'package:accelerhealth/model/key_value_model.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  TextEditingController textController = TextEditingController(text: "\$0");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        currentIndex: 0, // this will be set when a new tab is tapped
        items: navItems,
      ),
      body: SafeArea(
        child: Column(children: [
          // Custom widget that contains the user image and the amount left
          Header(),
          // Contains the text form field
          TextFormField(
            enabled: false,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 50),
            controller: textController,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
          /*the keypad section, the KeyPad (can be found in custom widget folder) is the custom widget, while KeyValueModel is the list of strings 
          that holds the KeyPad value(can be found in model folder)
          */
          Text(
            "Add memo",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xffCCCCCC),
            ),
          ),
          Expanded(
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(top: 25.0),
                shrinkWrap: true,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: KeyValueModel.keys.length,
                itemBuilder: (BuildContext ctx, index) {
                  return KeyPad(
                    value: KeyValueModel.keys[index].toString(),
                    onPress: index < KeyValueModel.keys.length - 1
                        ? () {
                            // add char
                            textController.value = TextEditingValue(
                                text: textController.text +
                                    KeyValueModel.keys[index]);
                          }
                        : () {
                            // delete character
                            if (textController.text.isNotEmpty) {
                              textController.value = TextEditingValue(
                                text: textController.text.length > 1
                                    ? (textController.text.substring(
                                        0, textController.text.length - 1))
                                    : "\$",
                              );
                            }
                          },
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              children: [
                TransactionTypeContainer(
                  value: "Debit",
                ),
                TransactionTypeContainer(
                  marginLeft: 10.0,
                  value: "Credit",
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
