import 'package:flutter/material.dart';

import 'account_item.dart';

class AccountsList extends StatelessWidget {
  const AccountsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(top: 30),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return AccountItem();
          }),
    );
  }
}
