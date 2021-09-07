import 'package:flutter/material.dart';
import 'package:telkom_app/widget/bottomNav.dart';
import 'package:telkom_app/widget/cardPaket.dart';
import 'package:telkom_app/widget/cariVoucher.dart';
import 'package:telkom_app/widget/kategoriPaket.dart';
import 'package:telkom_app/widget/paketContainer.dart';
import 'package:telkom_app/widget/terbaruPaket.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            PaketContainer(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  cardPaket('Internet', "12.19 GB"),
                  cardPaket('Telpon', "0 Min"),
                  cardPaket('SMS', "23 SMS"),
                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 10,
              color: Colors.grey[300],
            ),
            KategoriPaket(),
            cariVoucher(),
            TerbaruPaket(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
