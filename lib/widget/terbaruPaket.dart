import 'package:flutter/material.dart';

Container TerbaruPaket() {
  return Container(
    padding: EdgeInsets.all(20),
    // decoration: BoxDecoration(color: Colors.grey),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Terbaru dari Telkomsel",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "Lihat Semua",
              style: TextStyle(
                  color: Colors.red[900],
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          child: SizedBox(
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 100,
                  width: 248,
                  decoration: BoxDecoration(
                      // gradient: LinearGradient(colors: [Colors.orange.shade900, Colors.purple.shade500])
                      image: DecorationImage(
                          image: AssetImage('assets/images/Group 22.png'))),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 100,
                  width: 248,
                  decoration: BoxDecoration(
                      // gradient: LinearGradient(colors: [Colors.orange.shade900, Colors.purple.shade500])
                      image: DecorationImage(
                          image: AssetImage('assets/images/Group 24.png'))),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
