import 'dart:js';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:univercity/Helper/api_service.dart';
import 'package:univercity/Helper/snackbar.dart';
import 'package:univercity/Public/public.dart';
import 'package:univercity/UI/Veiw/Admin/admin_list.dart';

class AuthController extends GetxController{

  static String loginUsername = '';
  static String LoginPassword = '';

  static String registerUsername = '';
  static String registerPassword = '';
  static bool registerIswrite = true;

  static Register() async{
    var res = await ApiService.post("Authentication/register", {
      "userName": registerUsername,
      "password": registerPassword,
      "isWriter": registerIswrite
    });
    showSnackbar(res.data['success']?snackTypes.success:snackTypes.error, res.data['message']);
  }

  static AdminLogin(){
    if(loginUsername == AdminUsername){
      if(LoginPassword == AdminPassword){
        Get.to(AdminList());
      }else{
        showSnackbar(snackTypes.error, 'رمز اشتباه است .');}
    }else{
    showSnackbar(snackTypes.error, 'نام کاربری اشتباه است .');}
  }

}