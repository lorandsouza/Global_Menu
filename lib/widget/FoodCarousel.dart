import 'package:flutter/material.dart';
import 'package:global_menu/food.dart';
import 'package:google_fonts/google_fonts.dart';


class FoodCarousel extends StatelessWidget {
  const FoodCarousel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
      Container(
      height: 300.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foods.length,
        itemBuilder:(BuildContext context,int index){
          Food food=foods[index];
          return Container(
            margin: EdgeInsets.all(10.0),
            width: 210.0,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  bottom:15.0,
                  child: Container(
                    height: 120.0,
                    width: 200.0,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(food.name,style: GoogleFonts.roboto(
                              fontSize: 22.0,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.bold),
                          ),
                          Text(food.description,
                            style:TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0,9.0),
                          blurRadius: 6.0,
                        ),
                      ]
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius:BorderRadius.circular(20.0),
                        child: Image(
                          height: 180.0,
                          width: 180.0,
                          image: AssetImage(food.imageurl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ),
    ],
    );
  }
}
