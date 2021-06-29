import 'package:flutter/material.dart';
import 'package:payunitinterface/constants.dart';

class PayUnitButton extends StatefulWidget {
  final String text;
  final VoidCallback action;
  const PayUnitButton({Key? key, required this.text, required this.action})
      : super(key: key);

  @override
  _PayUnitButtonState createState() => _PayUnitButtonState();
}

class _PayUnitButtonState extends State<PayUnitButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      width: screenWidth(context),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: kmainpadding,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: screenHeight(context) / 12,
              width: screenWidth(context),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kprimaryColor),
              child: Center(
                  child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
