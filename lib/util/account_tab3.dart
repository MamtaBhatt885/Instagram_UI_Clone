import 'package:flutter/material.dart';

class AccountTab3 extends StatelessWidget {
  const AccountTab3({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(2),
            child: Container(color: Colors.green.shade400),
          );
        });
  }
}
