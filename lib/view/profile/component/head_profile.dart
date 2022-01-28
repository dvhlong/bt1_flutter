import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HeadProfile extends StatelessWidget {
  String? image;
  HeadProfile({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(55, 10, 10, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 30,
                width: 100,
              ),
              Center(
                child: Text(
                  "Profile",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                width: 100,
              ),
              Container(
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20,),
        CircleAvatar(
          backgroundImage: NetworkImage(image!),
          radius: 40,
        )
      ],
    );
  }
}
