import 'package:flutter/material.dart';
import 'package:telkom_app/widget/iconPaket.dart';

Container KategoriPaket() {
    return Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kategori Paket",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    iconPaket('Internet', 'Group 1.png'),
                    iconPaket('Telpon', 'Group 16.png'),
                    iconPaket('SMS', 'Group 17.png'),
                    iconPaket('Roaming', 'Group 18.png'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    iconPaket('Hiburan', 'Group 19.png'),
                    iconPaket('Unggulan', 'Group 20.png'),
                    iconPaket('Tersimpan', 'Group 21.png'),
                    iconPaket('Riwayat', 'Group 106.png'),
                  ],
                )
              ],
            ),
          );
  }