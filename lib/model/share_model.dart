import 'package:get/get.dart';

class SocialModel {
  final String name;
  final String img;
  SocialModel({required this.name, required this.img});
}

class SocialController extends GetxController {
  final RxList<SocialModel> shareOption = <SocialModel>[].obs;
  final RxList<SocialModel> recentContact = <SocialModel>[].obs;

  @override
  void onInit() {
    userShare();
    loadRecentContact ();
    super.onInit();
  }

  void userShare() {
    shareOption.assignAll([
      SocialModel(name: "Whatsapp", img: "assets/images/whatspp.png"),
      SocialModel(name: "Instagram", img: "assets/images/instagram.png"),
      SocialModel(name: "Facebook", img: "assets/images/facebook.png"),
      SocialModel(name: "Twitter", img: "assets/images/twiter.png"),
    ]);
  }

  void loadRecentContact (){
    recentContact.assignAll([
      SocialModel(name: "Rahul", img: "assets/images/user1.png"),
      SocialModel(name: "Summit", img: "assets/images/user2.png"),
      SocialModel(name: "Rajeev", img: "assets/images/user3.png"),
      SocialModel(name: "Shruti", img: "assets/images/user4.png"),
    ]);
  }
}
