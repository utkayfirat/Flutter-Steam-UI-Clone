import 'package:flutter/material.dart';
import 'package:steam_ui/cc/cons.dart';
import 'package:steam_ui/model/friend_list.dart';

class LastOffline extends StatelessWidget {
  LastOffline({Key? key}) : super(key: key);


  final lastOfflineList = OfflineChatsList.generateOfflineChats();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            width: MediaQuery.of(context).size.width,
            color: kColor.kFriendLabelBackgorundColor,
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            child: const Text('ÇEVRİMDIŞI',
              style: TextStyle(color: kColor.kFriendLabelColor,),),
          ),

          ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemBuilder: lastChatView,
              itemCount: lastOfflineList.length
          ),

        ],
      ),
    );
  }

  Widget lastChatView(BuildContext context, int i) {
    var nowData = lastOfflineList[i];
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2, color: kColor.kFriendBottomBar),
        ),
      ),
      child: ListTile(
        title: Text(nowData.profileName,
          style: TextStyle(
              color: kColor.kOffline),
        ),
        leading: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: kColor.kOffline,
                width: 1.2,
              )
          ),
          child: Image.asset(nowData.profilePhoto, scale: 4.7, fit: BoxFit.cover,),
        ),
        subtitle: Text(nowData.profileLastAction,
          style: TextStyle(
            color: kColor.kOffline,
          ),
        ),
        trailing: Icon(Icons.messenger, color: Colors.grey,size: 35,),
      ),

    );
  }

}
