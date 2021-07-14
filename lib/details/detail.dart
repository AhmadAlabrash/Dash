import 'package:dash/models/itemhome.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Cardfood model;
  Detail(this.model);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('${model.imagelink}'))),
          ),
          Positioned(
              top: 35,
              right: 20,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black.withOpacity(0.7),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      size: 25,
                      color: Colors.white,
                    )),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.5,
              left: 25,
              child: Wrap(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    child: Text(
                      '4.1',
                    ),
                  ),
                ],
              )),
          buildPositionItem(60, context),
          buildPositionItem(83, context),
          buildPositionItem(105, context),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.55,
              left: 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Type here to see all followers',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text('${model.category}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 42,
                        color: Colors.white,
                      ))
                ],
              )),
          Positioned(
              bottom: 0,
              child: Container(
                  color: Colors.white.withOpacity(1),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.33,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        buildItemBuy(
                            context,
                            "Chicken",
                            "To add custom fonts to your application, add a fonts section here, in this  section. Each entry in this list should have a",
                            "https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466__340.jpg"),
                        buildItemBuy(
                            context,
                            "Soup",
                            "list giving the asset and other descriptors for the font. For",
                            'https://wallpapercave.com/wp/wp3495545.jpg'),
                        buildItemBuy(
                            context,
                            "Barbeqew",
                            "For details regarding adding assets from package dependencies, see",
                            "https://wallup.net/wp-content/uploads/2017/03/29/490310-Fries-tomatoes-food-748x499.jpg"),
                        buildItemBuy(
                            context,
                            "Sea Food",
                            "An image asset can refer to one or more resolution-specific variants, see",
                            "https://wallup.net/wp-content/uploads/2017/03/29/490310-Fries-tomatoes-food-748x499.jpg"),
                      ],
                    ),
                  )))
        ],
      ),
      floatingActionButton: Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: Chip(
          backgroundColor: Colors.orangeAccent,
          label: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
            child: Text('Buy Now',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                )),
          ),
        ),
      ),
    );
  }

  Padding buildItemBuy(
      BuildContext context, String title, String content, String url) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 15),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(url),
                ),
                borderRadius: BorderRadiusDirectional.circular(20)),
            width: 120,
            height: 90,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$title',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black,
                    )),
                SizedBox(
                  height: 5,
                ),
                Text('$content',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      height: 1,
                      fontSize: 18,
                      color: Colors.grey,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Positioned buildPositionItem(double leftpadding, context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.5,
      left: leftpadding,
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/circl.jpg'),
      ),
    );
  }
}
