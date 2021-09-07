import 'package:flutter/material.dart';

class PaketContainer extends StatelessWidget {
  const PaketContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: ClipPathClass(),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.red),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(
                      text: 'Hai,',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      children: [
                    TextSpan(
                        text: " Muhammad",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25))
                  ])),
              Icon(
                Icons.qr_code,
                color: Colors.white,
                size: 30,
              )
            ],
          ),
        ),
        SizedBox(
          height: 300,
        ),
        Container(
          margin: EdgeInsets.only(top: 100, left: 28),
          height: 210,
          width: 335,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  colors: [Colors.red..shade700, Colors.red.shade900])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(25),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "085273541416",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "SIMPATI",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sisa Pulsa Anda",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                        Text(
                          "Rp.34.000",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Isi Pulsa",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber,
                        ))
                  ],
                ),
              ),
              Divider(
                height: 5,
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                    text: TextSpan(text: "Berlaku Sampai ", children: [
                  TextSpan(
                      text: "19 April 2021",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                ])),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Text(
                        'Telkomsel POIN',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 20,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            "172",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        )
      ],
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
