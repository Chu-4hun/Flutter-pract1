import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/counter_controller.dart';
import '../utilis/rounded_button.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Obx(() => Text(c.count.toString())),
          Row(
            children: [
              RoundedButtonWPadding(
                onPressed: (() => c.increment()),
                child:  Icon(
                  Icons.add,
                ),
              ),
              RoundedButtonWPadding(
                onPressed: (() => c.decrement()),
                child:  Icon(Icons.remove),
              ),
            ],
          ),
          RoundedButtonWPadding(child: Icon(Icons.sunny),)
        ],
      ),),
    );
  }
}
