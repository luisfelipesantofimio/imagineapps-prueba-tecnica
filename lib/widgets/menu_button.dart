import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  MenuButton({Key? key, required this.title, required this.img})
      : super(key: key);
  String title;
  String img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
      child: Container(
        height: 100,
        width: 500,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 189, 191, 236),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 83, 97, 203),
                ),
              ),
              Image(
                image: AssetImage(img),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
