import 'package:e_commerce_app/controller/on_bording_controller.dart';
import 'package:e_commerce_app/core/constant/color.dart';
import 'package:e_commerce_app/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomDotController extends StatelessWidget {
  const CustomDotController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBordingControllerImp>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onBordingList.length,
              (index) => AnimatedContainer(
                margin: const EdgeInsets.only(
                  right: 5,
                ),
                duration: const Duration(microseconds: 900),
                width: controller.currentPage == index ? 20 : 5,
                height: 6,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
