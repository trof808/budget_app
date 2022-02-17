import 'package:budget_app/widgets/accounts_list.dart';
import 'package:budget_app/widgets/total_amount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TotalAccounts extends StatelessWidget {
  const TotalAccounts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          children: [
            TotalAmount(),
            Align(alignment: FractionalOffset(0.2, 0.6), child: AccountsList()),
            MainPageMenu()
          ],
        ),
      ),
    );
  }
}

class MainPageMenu extends StatefulWidget {
  const MainPageMenu({Key? key}) : super(key: key);

  @override
  _MainPageMenuState createState() => _MainPageMenuState();
}

class _MainPageMenuState extends State<MainPageMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 97,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xAA228686),
                    textStyle: const TextStyle(fontSize: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                onPressed: () => {},
                child: Text("Настройки")),
          ),
          SizedBox(
            width: 42,
            height: 36,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xAAA1CF1C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                onPressed: () => {},
                child: SvgPicture.asset(
                  "assets/icons/plus.svg",
                  width: 42,
                  height: 36,
                )),
          ),
          SizedBox(
            width: 42,
            // height: 36,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xAA1CB8B8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                onPressed: () => {},
                child: SvgPicture.asset(
                  "assets/icons/plan.svg",
                )),
          ),
          SizedBox(
            width: 97,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xAA228686),
                    textStyle: const TextStyle(fontSize: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                onPressed: () => {},
                child: Text("План")),
          ),
        ],
      ),
    );
  }
}
