import 'package:flutter/material.dart';

class AccountItem extends StatelessWidget {
  const AccountItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 13),
      height: 58,
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: new LinearGradient(colors: [
            Color.fromARGB(255, 21, 97, 109),
            Color.fromARGB(122, 122, 65, 216),
            Color.fromARGB(100, 135, 61, 231),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tinkoff брокерский счет 1",
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(
                "500 000 ₽",
                textDirection: TextDirection.ltr,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
