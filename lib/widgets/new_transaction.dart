import 'package:flutter/material.dart';
import '../helper/colors.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
      shadowColor: generateMaterialColor(Pallete.secondary),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Title",
                labelStyle: TextStyle(),
              ),
              // onChanged: (val) {
              //   titleInput = val.trim();
              // },
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Amount",
              ),
              // onChanged: (val) => amountInput = val,
              controller: amountController,
            ),
            TextButton(
                onPressed: () {
                  // print(titleInput);
                  // print(amountInput);
                  print(titleController.text);
                },
                child: Text("Add Transaction"),
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: generateMaterialColor(Pallete.fourth),
                    onSurface: generateMaterialColor(Pallete.primary)))
          ],
        ),
      ),
    );
  }
}
