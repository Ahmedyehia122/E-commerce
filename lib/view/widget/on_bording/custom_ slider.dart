import 'package:e_commerce_app/controller/on_bording_controller.dart';
import 'package:e_commerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../data/data_source/static/static.dart';

class CustomSliderOnBording extends GetView<OnBordingControllerImp> {
  const CustomSliderOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: onBordingList.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(
              // vertical: 20,
              ),
          child: Column(
            children: [
              //title
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Text(
                  '${onBordingList[i].title}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              //image
              Image.asset(
                '${onBordingList[i].image}',
              ),
              const SizedBox(
                height: 50,
              ),
              //body
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  '${onBordingList[i].body}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    height: 2,
                    color: AppColor.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
