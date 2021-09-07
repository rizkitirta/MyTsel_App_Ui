import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telkom_app/screens/paket_Internet_screen.dart';

iconPaket(String name, String icon) {
    return GestureDetector(
      onTap: () => Get.to(PaketInternetScreen()),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.yellow[50],
                shape: BoxShape.circle,
              ),
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/$icon'),
                    fit: BoxFit.none,
                  ),
                  shape: BoxShape.circle,
                ),
              )),
              SizedBox(height: 5,),
              Text("$name", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),)
        ],
      ),
    );
  }

