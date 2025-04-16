import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:univercity/Helper/snackbar.dart';
import 'package:univercity/Public/public.dart';
import 'package:univercity/UI/Veiw/Admin/admin_list.dart';

class AuthController extends GetxController{

  static String username = '';
  static String password = '';

  static AdminLogin(){
    if(username == AdminUsername){
      if(password == AdminPassword){
        Get.to(AdminList());
        print('object');
      }else{
        showSnackbar(snackTypes.error, 'رمز اشتباه است .');}
    }else{
    showSnackbar(snackTypes.error, 'نام کاربری اشتباه است .');}
  }

}