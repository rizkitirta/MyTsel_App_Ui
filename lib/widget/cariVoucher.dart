import 'package:flutter/material.dart';

Container cariVoucher() {
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
              "Cari Voucher, Yuk!",
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
          height: 20,
        ),
        Container(
          child: SizedBox(
            height: 180,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
              cardVoucher('Double Benefits from DOUBLE UNTUNG','Rectangle 14.png'),
              cardVoucher('Double Benefits from DOUBLE UNTUNG','Rectangle 15.png'),
              cardVoucher('Double Benefits from DOUBLE UNTUNG','Rectangle 16.png'),
            ]),
          ),
        )
      ],
    ),
  );
}

Card cardVoucher(String text, String image) {
  return Card(
    elevation: 5,
    shadowColor: Colors.black26,
    child: Container(
      height: 172,
      width: 248,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 112,
                width: 248,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/$image'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "$text",
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
