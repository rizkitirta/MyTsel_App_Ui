import 'package:flutter/material.dart';
import 'package:telkom_app/widget/cariVoucher.dart';
import 'package:telkom_app/widget/terbaruPaket.dart';

class PaketInternetScreen extends StatelessWidget {
  const PaketInternetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        title: Text(
          'Paket Internet',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.all(20),
                      width: 335,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fillColor: Colors.grey[200],
                            hintText: 'Cari Paket Kamu...',
                            contentPadding: EdgeInsets.all(5)),
                      )),
                  TerbaruPaket(),
                  Container(
                    height: 180,
                    width: 355,
                    // decoration: BoxDecoration(color: Colors.grey),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Langganan Kamu",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 116,
                          width: 248,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "14 GB",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 28,
                                    width: 83,
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.hourglass_empty_sharp,
                                          size: 20,
                                        ),
                                        Text(
                                          '30 Hari',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800),
                                        )
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.bookmark,
                                    color: Colors.grey[200],
                                  )
                                ],
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Text(
                                    "Rp.99.000",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Rp.96.000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.red[800],
                                          fontSize: 20)),
                                  Text(
                                    'Internet OMG!',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
