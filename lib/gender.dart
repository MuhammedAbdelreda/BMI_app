import 'package:flutter/material.dart';
import 'constants.dart';

// ignore: camel_case_types
class gender extends StatelessWidget {
  final String g;
  final IconData icon;
  final Color c;
  final Function()? onpressed;
  const gender({required this.icon,required this.c,required this.onpressed,required this.g});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: onpressed,
        child: Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            color: c,
            borderRadius: BorderRadius.circular(5),
          ),
          //margin: EdgeInsets.all(70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              SizedBox(height: 10,),
              Text(g),
            ],
          ),
        ),
      ),
    );
  }
}