import 'package:flutter/material.dart';

Padding cardPaket(String paket, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0),
    child: Container(
      height: 68,
      width: 100,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$paket",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "$value",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900],
                    fontSize: 15),
              ),
            ],
          ),
        ),
        elevation: 8,
        shadowColor: Colors.black26,
      ),
    ),
  );
}
