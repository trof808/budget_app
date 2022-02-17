import 'package:flutter/material.dart';

class TotalAmount extends StatelessWidget {
  const TotalAmount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Общее состояние",
            textDirection: TextDirection.ltr,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Text(
              "2 500 000 ₽",
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ],
      ),
    );
  }
}
