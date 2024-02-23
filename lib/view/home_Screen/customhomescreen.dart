import 'package:flutter/material.dart';

class CustomHomeScreen extends StatefulWidget {
  CustomHomeScreen(
      {super.key,
      required this.title,
      required this.date,
      required this.des,
      required this.selectcolors,
      this.ondeletepressed});
  final String title;
  final String date;
  final String des;
  final Color selectcolors;
  final void Function()? ondeletepressed;

  @override
  State<CustomHomeScreen> createState() => _CustomHomeScreenState();
}

class _CustomHomeScreenState extends State<CustomHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            // height: 120,
            // width: 400,
            decoration: BoxDecoration(
                color: widget.selectcolors,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              "assets/images/pen.png",
                              color: Colors.black,
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                widget.ondeletepressed!();
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Text(
                    widget.des,
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        widget.date,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.share)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
