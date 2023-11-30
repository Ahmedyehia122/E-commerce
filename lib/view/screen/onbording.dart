import 'package:e_commerce_app/controller/on_bording_controller.dart';
import 'package:e_commerce_app/view/widget/on_bording/custom_%20slider.dart';
import 'package:e_commerce_app/view/widget/on_bording/custom_button.dart';
import 'package:e_commerce_app/view/widget/on_bording/dot_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class OnBording extends StatelessWidget {
  const OnBording({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBordingControllerImp());
    return const Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            //title + image + body (pageview)
            child: CustomSliderOnBording(),
          ),
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //dot controller
                  CustomDotController(),
                  Spacer(
                    flex: 2,
                  ),
                  //Button
                  CustomButtonOnBording(),
                ],
              ))
        ],
      ),
    ));
  }
}
