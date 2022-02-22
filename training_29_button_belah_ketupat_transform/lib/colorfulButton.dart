import 'dart:math';

import 'package:flutter/material.dart';
import 'package:training_29_button_belah_ketupat_transform/main.dart';

class ColorfulButton extends StatefulWidget {
  Color mainColor, secondColor;
  IconData icons;
  @override
  _ColorfulButtonState createState() =>
      _ColorfulButtonState(mainColor, secondColor, this.icons);
  ColorfulButton(this.mainColor, this.secondColor, this.icons);
}

class _ColorfulButtonState extends State<ColorfulButton> {
  bool isPressed = false;
  Color mainColor, secondColor;
  IconData icons;

  _ColorfulButtonState(this.mainColor, this.secondColor, this.icons);
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        onTapDown: (details) {
          setState(
            () {
              isPressed = true;
            },
          );
        },
        onTapUp: (details) {
          setState(() {
            isPressed = false;
          });
        },
        onTapCancel: () {
          setState(() {
            isPressed = false;
          });
        },
        child: Material(
          elevation: (!isPressed) ? 10 : 5,
          shadowColor: (!isPressed) ? mainColor : secondColor,
          borderRadius: BorderRadius.circular(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    color: (!isPressed) ? mainColor : secondColor,
                    child: Transform.rotate(
                        angle: -pi / 4,
                        child: Icon(icons, color: Colors.white)),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
