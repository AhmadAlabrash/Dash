import 'package:dash/components/components.dart';
import 'package:dash/cubit/cubit.dart';
import 'package:dash/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool ischicken = false;

  bool ispitza = false;

  bool issea = false;

  bool issoup = false;

  bool isparbeqw = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Cubithomefood, Statemomfood>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
              appBar: AppBar(
                titleSpacing: 10,
                title: Text(
                  'DoorDash',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                actions: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/circl.jpg'),
                    // backgroundImage: NetworkImage(
                    //     'https://media.vanityfair.com/photos/5ecd2aa2e80a2675a5ae9aee/master/pass/jennifer-lopez-interview.jpg'),
                    radius: 22,
                  ),
                  SizedBox(
                    width: 30,
                  )
                ],
              ),
              body: SingleChildScrollView(
                //  physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ChoiceChip(
                              selectedColor: Colors.orange,
                              label: Text('Chicken',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontFamily: "Jana")),
                              selected: ischicken,
                              onSelected: (value) {
                                setState(() {
                                  ischicken = value;
                                });
                              },
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            ChoiceChip(
                              selectedColor: Colors.orange,
                              label: Text('Pitza',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontFamily: "Jana")),
                              selected: ispitza,
                              onSelected: (value) {
                                setState(() {
                                  ispitza = value;
                                });
                              },
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            ChoiceChip(
                              selectedColor: Colors.orange,
                              label: Text('Sea Food',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontFamily: "Jana")),
                              selected: issea,
                              onSelected: (value) {
                                setState(() {
                                  issea = value;
                                });
                              },
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            ChoiceChip(
                              selectedColor: Colors.orange,
                              label: Text('Soup',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontFamily: "Jana")),
                              selected: issoup,
                              onSelected: (value) {
                                setState(() {
                                  issoup = value;
                                });
                              },
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            ChoiceChip(
                              selectedColor: Colors.orange,
                              label: Text('Parbiqew',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontFamily: "Jana")),
                              selected: isparbeqw,
                              onSelected: (value) {
                                setState(() {
                                  isparbeqw = value;
                                });
                              },
                            ),
                            SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                      ),
                      height: 55,
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 8, bottom: 10),

                      // child: ListView.separated(
                      //     scrollDirection: Axis.horizontal,
                      //     itemBuilder: (context, index) => itemchip(
                      //         name: Cubithomefood.getdata(context)
                      //             .chipsfood[index],
                      //         context: context),
                      //     separatorBuilder: (context, index) => SizedBox(
                      //           width: 10,
                      //         ),
                      //     itemCount:
                      //         Cubithomefood.getdata(context).chipsfood.length),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 12, right: 12, left: 15),
                              child: itemfood(
                                  Cubithomefood.getdata(context).cards[index],
                                  context),
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                              height: 2,
                            ),
                        itemCount: Cubithomefood.getdata(context).cards.length),
                  ],
                ),
              ),
            ));
  }
}
