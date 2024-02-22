import 'package:flutter/material.dart';

class CustomHomeScreen extends StatefulWidget {
  const CustomHomeScreen({super.key});

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
            height: 120,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.amber[200],
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
                          "something",
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
                            Icon(Icons.delete),
                          ],
                        )
                      ],
                    ),
                  ),
                  Text(
                    "hkdskh",
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Tue, Feb 20,2024",
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
