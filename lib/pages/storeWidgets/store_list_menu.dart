import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:steam_ui/cc/cons.dart';

class StoreListMenu extends StatelessWidget {
  const StoreListMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              kColor.kStorePageBarBackgorundONE,
              kColor.kStorePageBarBackgorundTWO
            ]),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9),
            child: Row(
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset('assets/images/profile_photo.jpg', width: 20, height: 20,),
                ),

                Text("Mağazanız", style:
                TextStyle(
                    color: kColor.kStoreTextColor,
                    fontSize: 15.2,
                    shadows: [
                      Shadow(
                        color: Colors.black12.withOpacity(0.5),
                        offset: Offset(2,2),
                        blurRadius: 3,
                      )
                    ]
                ),
                ),


              ],
            ),
          ),

          menuTextListed("Yeni ve Kayda Değer", 10.0, 12.0),
          menuTextListed("Kategoriler", 10.0, 12.0),
          menuTextListed("Puan Dükkanı", 10.0, 12.0),
          menuTextListed("Haberler", 10.0, 12.0),
          menuTextListed("Laboratuvar", 10, 12),

          SizedBox(height: 5,),

          Container(
            height: 37,
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: kColor.kStorePageBarSearchBackground,
              border: Border(
                top: BorderSide(width: 2,
                    color: kColor.kStorePageBarSearchBackgroundOutLine),
                bottom: BorderSide(width: 2,
                    color: kColor.kStorePageBarSearchBackgroundOutLine),
                left: BorderSide(width: 2,
                    color: kColor.kStorePageBarSearchBackgroundOutLine),
                right: BorderSide(width: 2,
                    color: kColor.kStorePageBarSearchBackgroundOutLine),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                hintText: "ara",
                focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent, width: 0),
                ),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),

        ],
      ),

    );
  }

  Padding menuTextListed(String menuTexts, double VV, double HV) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: HV , horizontal: HV),
      child: Text(menuTexts, style:
      TextStyle(
          color: kColor.kStoreTextColor,
          fontSize: 15.5,
          shadows: [
            Shadow(
              color: Colors.black12.withOpacity(0.5),
              offset: Offset(2,2),
              blurRadius: 3,
            )
          ]
      ),
      ),
    );
  }


}
