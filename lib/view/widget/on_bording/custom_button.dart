import 'package:e_commerce_app/controller/on_bording_controller.dart';
import 'package:e_commerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomButtonOnBording extends GetView<OnBordingControllerImp> {
  const CustomButtonOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(bottom: 30),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(
          horizontal: 100,
          vertical: 2,
        ),
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        child: const Text(
          'Continue',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
