import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:steam_ui/cc/cons.dart';

class FeaturedAndRecommended extends StatelessWidget {
  const FeaturedAndRecommended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 37,),

        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
          child: const Text("ÖNE ÇIKANLAR VE TAVSİYE EDİLENLER",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17
            ),
          ),
        ),

        Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                      colors: [
                        kColor.kStoreItemLGONE,
                        kColor.kStoreItemLGONE,
                        kColor.kStoreItemLGONE,
                        kColor.kStoreItemLGONE,
                        kColor.kStoreItemLGTWO,
                      ]
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image.asset("assets/images/the_witcher_1.jpg", fit: BoxFit.cover,),

                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("The Witcher 3: Wild Hunt",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFFFAFEFF),
                              fontSize: 23.2,
                              fontWeight: FontWeight.w400,
                            ),
                          ),

                          SizedBox(height: 20,),

                          Text("74,99 TL",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: kColor.kStoreItemPrice,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),


                        ],

                      ),
                    ),

                  ],
                ),

              ),



            ],
          ),
        )

      ],
    );
  }
}
