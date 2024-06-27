import 'package:flutter/material.dart';

import '../util/donut_tile.dart';
class DonutTab extends StatelessWidget {
  List donutOnSale = [
    ["Ice Cream","36",Colors.blue,"lib/images/donut.png"],
    ["Ice Cream","20",Colors.red,"lib/images/donut_1.png"],
    ["Ice Cream","28",Colors.purple,"lib/images/donut_2.png"],
    ["Ice Cream","37",Colors.brown,"lib/images/donut_3.png"],
  ];
  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donutOnSale.length,
        padding: EdgeInsets.all(12),

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2,
            childAspectRatio: 1/1.5  // kiem soat ti le khung hinh  chieurong/chieucao


        ),
        itemBuilder: (context, index){
          return DonutTile(
            donutFlavor: donutOnSale[index][0],
            donutPrice: donutOnSale[index][1],
            donutColor: donutOnSale[index][2],
            donutImage: donutOnSale[index][3],
          );
        }
    );
  }
}
