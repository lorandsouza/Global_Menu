import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:global_menu/categories.dart';




class CuisineCarousel extends StatelessWidget {
 Text buildRatingStars(int rating){
   String stars='';
   for(int i=0;i<rating;i++){
     stars+='⭐ ';
   }
   stars.trim();
   return Text(stars);

  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left:40.0,bottom: 5.0),
                  child: Text('Cuisines',style: GoogleFonts.roboto().copyWith(fontSize: 30.0,
                      fontWeight: FontWeight.bold),),
                ),
              )
            ],
          ),
              Expanded(
              child: ListView.builder(
                itemCount: cuisines.length,
                itemBuilder: (BuildContext context,int index){
                  Categories cuisine=cuisines[index];
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                        height: 170.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0,20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left:15.0,top:5.0),
                                    child: Container(
                                      width: 160.0,
                                      child: Text(cuisine.name,
                                                     style: GoogleFonts.roboto().copyWith(
                                                    fontSize: 30.0,
                                                       fontWeight: FontWeight.bold),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                                    ),
                                    ),
                                  ),

                                  Column(
                                    children: [
                                      Icon(Icons.location_on,color: Colors.blueGrey,size: 30.0,),
                                      Text(cuisine.location,style:GoogleFonts.roboto().copyWith(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w400,
                                      color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                              margin: EdgeInsets.only(left:20.0),
                                child: Text(cuisine.restname,style:TextStyle(fontSize: 17.0,
                                    fontWeight: FontWeight.w700,
                                color: Color(0xFF494F55),), ),
                              ),
                              SizedBox(height:5.0,),
                              Container(
                                margin: EdgeInsets.only(left:20.0),
                                  child: buildRatingStars(cuisine.rating)),
                              SizedBox(height: 7.0,),
                            //text
                              Row(
                                children: [

                                  Container(
                                    margin: EdgeInsets.only(left: 20.0),
                                    height: 28.0,
                                    width: 90.0,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color:Color(0xFFD2ECEF),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Text(cuisine.startTime,style: GoogleFonts.roboto().copyWith(
                                        fontSize: 20.0,
                                    fontWeight: FontWeight.w400, color: Colors.black),),
                                  ),
                                  SizedBox(width: 20.0,),
                                  Container(
                                    height: 28.0,
                                    width: 90.0,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color:Color(0xFFD2ECEF),
                                    ),
                                    child: Text(cuisine.endTime,style: GoogleFonts.roboto().copyWith(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w400, color: Colors.black),),
                                  ),

                                ],
                              ),

                            ],
                          ),
                        ),

                      ),
                      Positioned(
                        left:20.0,
                        top:15.0,
                        bottom:15.0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                          child: Image(width: 110.0,
                            image: AssetImage(cuisine.imageUrl),
                            fit: BoxFit.cover,
                          ),

                        ),
                      ),

                    ],
                  );

                },
              ),
            ),
        ],
      ),


    );
  }
}
