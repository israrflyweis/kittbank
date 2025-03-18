

import 'package:get/get.dart';

class NotificationController extends GetxController{

  var pushNotification = true.obs;
  var phoneNumber = true.obs;
  var email =true.obs;
  var cashTerm = true.obs;

  void togglePush(bool? value){
    if(value != null)pushNotification.value = value;
  }
  void togglePhoneNumber(bool? value){
    if(value != null)phoneNumber.value = value;
  }
  void toggleEmail(bool? value){
    if(value != null)email.value = value;
  }
  void toggleCashTerm(bool? value){
    if(value != null)cashTerm.value = value;
  }
}