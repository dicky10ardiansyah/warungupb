import 'package:flutter/material.dart';
import 'package:warungupb/Theme/Color.dart';
import 'package:warungupb/Theme/CustomTextStyle.dart';
import 'package:warungupb/Widgets/CustomOutlineButton.dart';

import 'ResturantDetail.dart';


String image = 'https://images.pexels.com/photos/13294534/pexels-photo-13294534.jpeg?auto=compress&cs=tinysrgb&w=600';

class ResturantListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (context,constraint){

        double height = constraint.biggest.height;
        double width = constraint.biggest.width;
        return ListView.separated(
          key: PageStorageKey("list_data"),
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResturantDetail(index: index,image: image,title: "Nasi Goreng",),
                    ),
                );
              },
              child: ResturantListItem(width: width,height: height,index: index,),
            );
          },
          separatorBuilder: (context,index){
            return Container();
          },
          itemCount: 7,
        );
      },
    );
  }
}

class TextSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Nasi Goreng",style: resturantListTitleText(),),
                Text("Kampoeng",style: resturantListSubTitleText())
              ],
            ),
          ),
        ),
        Container(
          child: CustomOutlineButton(
          onPressed: (){

          },
          textStyle: resturantListButton(),
          highlightColor: primaryColor,
          borderColor: primaryColor,
          text: "Ready in 20Min",
          ),
        ),
      ],
    );
  }
}

class ResturantListItem extends StatelessWidget{

  final double height;
  final double width;
  final int index;
  ResturantListItem({required this.width,required this.height,required this.index});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      height: height/3,
      child: Column(
        children: <Widget>[
          Expanded(
              child: Hero(
                tag: index,
                child: Container(
                  width: width-20,
                  child: Image.network(image,fit: BoxFit.fitWidth,),
                ),
              )
          ),
          TextSection()
        ],
      ),
    );
  }
}