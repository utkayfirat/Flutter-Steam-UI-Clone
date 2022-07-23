import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:steam_ui/cc/cons.dart';
import 'package:steam_ui/pages/storeWidgets/featured_and_recommended.dart';
import 'package:steam_ui/pages/storeWidgets/store_list_menu.dart';

class MagazaPage extends StatelessWidget {
  const MagazaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _specialAppBar(context),
      drawer: _specialDrawer(context),
      backgroundColor: kColor.kStorePageBackground,
      body: SingleChildScrollView(
        child: Column(
          children: const [

            StoreListMenu(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: FeaturedAndRecommended(),
            ),


          ],
        ),
      ),
    );
  }

  AppBar _specialAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kColor.kAppBarColor,
      title: Text("Steam'e Hoş geldiniz!",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      elevation: 0,

      actions: [

        IconButton(onPressed: (){ Navigator.pushReplacementNamed(context, "magaza"); },
          icon: Icon(Icons.refresh,color: Colors.grey),),

        SizedBox(width: 4,),

      ],

    );
  }

  Drawer _specialDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: kColor.kMenuBackgroundColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: Row(
                  children: [
                    Image.asset("assets/images/profile_photo.jpg", width: 65, height: 65, fit: BoxFit.cover,),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(15,0,0,0),
                      child: Text("wine", style: TextStyle(
                        color: kColor.kMenuUsernameColor,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                child: Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width ,
                  decoration: BoxDecoration(
                    color: kColor.kMenuLineColor,
                  ),
                ),
              ),


              listTileSpecialWidgetForMenu("Steam Guard", "0", "steamguard", context),
              listTileSpecialWidgetForMenu("Onaylamalar", "0", "none" , context),
              listTileSpecialWidgetForMenu("Sohbet", "0", "sohbet", context),
              listTileSpecialWidgetForMenu("Bildirimler", "1" , "none", context),
              listTileSpecialWidgetForMenu("Mağaza", "1", "magaza", context),
              listTileSpecialWidgetForMenu("Onaylamalar", "1", "none", context),
              listTileSpecialWidgetForMenu("Topluluk", "1", "none", context),
              listTileSpecialWidgetForMenu("Sen ve Arkadaşların", "1", "none", context),
              listTileSpecialWidgetForMenu("Kütüphane", "0", "kutuphane", context),
              listTileSpecialWidgetForMenu("Destek", "0", "none", context),
              listTileSpecialWidgetForMenu("Ayarlar", "1", "none", context),

            ],
          ),
        ),
      ),
    );
  }

  ListTile listTileSpecialWidgetForMenu(String menuName, String menuType, String goThisPage, BuildContext context) {
    return ListTile(
      onTap: (){
          Navigator.pushReplacementNamed(context, goThisPage);
      },
      title: Text(menuName,
          style: TextStyle(color: kColor.kMenuContentTextColor, fontSize: 23.2, fontWeight: FontWeight.w400)),
      trailing: menuType == "1" ? Icon(Icons.keyboard_arrow_down, color: Colors.grey,size: 30,) : SizedBox()  ,
    );
  }



}
