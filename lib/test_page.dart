import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget {
  const FancyButton({required this.title, required this.onPressed});

  final GestureTapCallback? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        fillColor: Colors.deepPurple,
        splashColor: Colors.orange,
        shape: const StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        onPressed: onPressed);
  }
}
