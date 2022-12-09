import 'package:flutter/material.dart';
import 'package:warungupb/Theme/Color.dart';

class MenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
        key: new PageStorageKey('resturantMenuItem'),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 70.0,
                      width: 80.0,
                      padding: EdgeInsets.only(left: 10.0),
                      child: Image.network("https://www.cookwithipohbunny.com/wp-content/uploads/2020/07/IMG_20200720_130135-1024x768.jpg",fit: BoxFit.fitHeight,),
                    ),
                    Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                          height: 90.0,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "Mee Goreng",
                                      style: TextStyle(
                                          fontSize: 16.0, fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Text(
                                    "\Rp7.000",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: primaryColor,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                              Text(
                                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs",
                                maxLines: 2,
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 5.0,
          );
        },
        itemCount: 1);
  }
}
