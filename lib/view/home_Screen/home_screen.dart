import 'package:flutter/material.dart';
import 'package:note_app/view/Home_Screen/list_homescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List colorlist = [
    Colors.red[200],
    Colors.amber[200],
    Colors.green[200],
    Colors.blue[200]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => StatefulBuilder(
                    builder: (context, bottomSetState) => Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          padding: EdgeInsets.symmetric(
                              vertical: 30, horizontal: 15),
                          child: Column(
                            //mainAxisSize: MainAxisSize.min,
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10)),
                                  fillColor: Colors.grey[350],
                                  filled: true,
                                  label: Text("Title"),
                                  //   border: OutlineInputBorder()
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 35, horizontal: 10),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10)),
                                  fillColor: Colors.grey[350],
                                  filled: true,
                                  label: Text("Description"),
                                  // border: OutlineInputBorder()
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10)),
                                  fillColor: Colors.grey[350],
                                  filled: true,
                                  label: Text("Date"),
                                  // border: OutlineInputBorder()
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                height: 50,
                                child: ListView.separated(
                                  itemCount: 4,
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) => Container(
                                    // height: 60,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: colorlist[index],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                    width: 10,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Center(child: Text("Save")),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Center(child: Text("Cancel")),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )));
          },
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "PENPAD",
            style: TextStyle(color: Colors.deepOrangeAccent),
          ),
        ),
        body: ListView.separated(
            itemCount: 3,
            itemBuilder: (context, index) => CustomHomeScreen(),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                )));
  }
}
