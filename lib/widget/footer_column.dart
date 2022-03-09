import 'package:flutter/material.dart';

class FooterColumn extends StatelessWidget {
  final List<String> footerColumnList;
  final String title;

  FooterColumn({this.footerColumnList, this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height*.63,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2),),
          Container(
            width: size.width*.13,
            height: size.height*.55,
            child: ListView.builder(
                itemCount: footerColumnList.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context,int index){
                  return Container(margin: EdgeInsets.only(bottom: size.height*.03),
                    child: Text(footerColumnList[index],style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.w600,letterSpacing: 1.2
                    ),),
                  );
                }),
          )
        ],),
    );
  }
}
