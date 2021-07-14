import 'package:dash/cubit/cubit.dart';
import 'package:dash/details/detail.dart';
import 'package:dash/models/itemhome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget itemchip({@required name, @required context}) => Container(
      child: InputChip(
        label: Text(
          '$name',
          style: TextStyle(fontSize: 22, fontFamily: "Jana"),
        ),
        selected: Cubithomefood.getdata(context).currentindex,
        onSelected: (bool value) {
          Cubithomefood.getdata(context).changechips(value);
        },
      ),
      // child: Chip(
      //   label: Text(
      //     '$name',
      //     style: TextStyle(fontSize: 22, fontFamily: "Jana"),
      //   ),
      //   backgroundColor: isactive ? Colors.orangeAccent : Colors.grey[500],
      // ),
    );

Widget itemfood(Cardfood model, context) => InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Detail(model)));
      },
      child: Card(
        elevation: 10,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('${model.imagelink}')),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
              ),
              height: 300,
              width: double.infinity,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 110,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${model.title}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: "Jana",
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${model.category}',
                        style: TextStyle(
                            height: 0.8, fontFamily: "Jana", fontSize: 22),
                      )
                    ],
                  ),
                ),
                Spacer(),
                CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    child: Text(
                      '${model.rate}',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
