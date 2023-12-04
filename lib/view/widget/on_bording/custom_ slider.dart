// ignore_for_file: file_names
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
                  style: Theme.of(context).textTheme.headline1,
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
                child: Text('${onBordingList[i].body}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ],
          ),
        );
      },
    );
  }
}
