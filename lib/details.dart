import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants.dart';

class details extends StatelessWidget {
  details({required this.data,required this.d, required this.icon,required this.onpressed,required this.icon2,required this.onpressed2});

  late final int data;
  final String d;
  final IconData icon;
  final IconData icon2;
  final Function()? onpressed;
  final Function()? onpressed2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      decoration: decor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(d),
          Text(data.toString()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton.small(
                backgroundColor: Colors.black,
                focusColor: Colors.white,
                onPressed:onpressed,
                child:Icon(icon,size: 30,color: Colors.white,),
              ),
              SizedBox(width: 10,),
              FloatingActionButton.small(
                backgroundColor: Colors.black,
                focusColor: Colors.white,
                onPressed:onpressed2,
                child:Icon(icon2,size: 30,color: Colors.white,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}