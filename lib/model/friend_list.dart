
class LastChatsList{

  String profilePhoto;
  String profileName;
  String profileLastAction;
  String gameOrNone;

  LastChatsList(this.profilePhoto, this.profileName, this.profileLastAction, this.gameOrNone);

  static List<LastChatsList> generateLastChats(){
    return [

      LastChatsList(
        'assets/images/lastchatavatar1.jpg',
        'canthekira',
        'Oyunda: Rocket League',
        'game'
      ),

      LastChatsList(
          'assets/images/lastchatavatar0.jpg',
          'Eirene',
          'Son Çevrimiçi: 3 gün önce',
          'none'
      ),

    ];
  }

}

class OnlineChatsList{

  String profilePhoto;
  String profileName;
  String profileLastAction;

  OnlineChatsList(this.profilePhoto, this.profileName, this.profileLastAction);

  static List<OnlineChatsList> generateOnlineChats(){
    return [

      OnlineChatsList(
        'assets/images/onlineavatar0.jpg',
        'FxDree',
        'Çevrimiçi',
      ),

      OnlineChatsList(
        'assets/images/onlineavatar1.jpg',
        'Liuzz',
        'Çevrimiçi',
      ),

      OnlineChatsList(
        'assets/images/onlineavatar2.jpg',
        'niizuki',
        'Çevrimiçi',
      ),

      OnlineChatsList(
        'assets/images/onlineavatar3.jpg',
        'miyamer',
        'Çevrimiçi',
      ),

    ];
  }
}

class PlayingChatsList{

  String profilePhoto;
  String profileName;
  String profileLastAction;

  PlayingChatsList(this.profilePhoto, this.profileName, this.profileLastAction);

  static List<PlayingChatsList> generatePlayingChats(){
    return[
      PlayingChatsList(
        'assets/images/playinggameavatar0.jpg',
        'Wrukee',
        'Oyunda: Grand Theft Auto V',
      ),

      PlayingChatsList(
        'assets/images/playinggameavatar1.jpg',
        'DeadRose',
        'Oyunda: Grand Theft Auto V',
      ),

      PlayingChatsList(
        'assets/images/playinggameavatar2.jpg',
        'PreF',
        'Oyunda: Counter-Strike: Global Offensive',
      ),

    ];
  }

}

class OfflineChatsList{

  String profilePhoto;
  String profileName;
  String profileLastAction;

  OfflineChatsList(this.profilePhoto, this.profileName, this.profileLastAction);

  static List<OfflineChatsList> generateOfflineChats(){
    return [
      OfflineChatsList(
        'assets/images/offlineavatar0.jpg',
        'Charon',
        'Son Çevrimiçi: 1 saat önce',
      ),

      OfflineChatsList(
        'assets/images/offlineavatar1.jpg',
        'ELUVEITIE',
        'Son Çevrimiçi: 14 saat önce',
      ),

      OfflineChatsList(
        'assets/images/offlineavatar2.jpg',
        'Zarix',
        'Son Çevrimiçi: 10 dakika önce',
      ),

      OfflineChatsList(
        'assets/images/offlineavatar3.png',
        'DiQue',
        'Son Çevrimiçi: 30 dakika önce',
      ),

      OfflineChatsList(
        'assets/images/offlineavatar4.jpg',
        'InFlames',
        'Son Çevrimiçi: 3 saat önce',
      ),

      OfflineChatsList(
        'assets/images/offlineavatar5.jpg',
        'RENX',
        'Son Çevrimiçi: 10 saat önce',
      ),

    ];
  }
}