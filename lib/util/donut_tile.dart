import 'package:flutter/material.dart';
class DonutTile extends StatelessWidget{
  final String donutFlavor;
  final String donutPrice;
  final donutColor;
  final String donutImage;

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutPrice,
    required this.donutColor,
    required this.donutImage,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children: [
            // price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius:BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        topLeft: Radius.circular(15)
                      ),
                    ),
                    padding: EdgeInsets.all(12),

                    child: Text(
                      '\$'+ donutPrice,
                      style: TextStyle(
                          color: donutColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),


                    ),
                ),
              ],
            ),
             //Image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Image.asset(donutImage),
            ),
            //flavor
            Text(
                donutFlavor,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: donutColor,
                  fontSize: 15
                ),
            ),
            Text(
              "Dunkins",
              style: TextStyle(color: Colors.grey[600]),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.pink,
                  )
                ],
              ),
            )
            //icon + add button
          ],
        ),
      ),
    );
  }

}