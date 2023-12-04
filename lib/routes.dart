import 'package:e_commerce_app/core/constant/app_route.dart';
import 'package:e_commerce_app/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (Context) => const LogIn(),
};
