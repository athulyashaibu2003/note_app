import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class CustomHomeScreen extends StatefulWidget {
  CustomHomeScreen(
      {super.key,
      required this.title,
      required this.date,
      required this.des,
      required this.selectcolors,
      this.ondeletepressed,
      this.oneditpressed});
  final String title;
  final String date;
  final String des;
  final Color selectcolors;
  final void Function()? ondeletepressed;
  final void Function()? oneditpressed;

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
                            IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                widget.oneditpressed!();
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.black,
                              ),
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
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: () {
                          Share.share('${widget.title}\n${widget.des}');
                        },
                      )
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
