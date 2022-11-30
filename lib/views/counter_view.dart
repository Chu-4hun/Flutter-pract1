import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/counter_controller.dart';
import '../utilis/reusable_card.dart';
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
            Obx(() => Text(
                  c.count.toString(),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReusableCard(
                    onPress: (() => c.increment()),
                    color: Colors.blue,
                    child: Icon(
                      Icons.add,
                    ),
                  ),
                  SizedBox(width: 50,),
                  ReusableCard(
                    onPress: (() => c.decrement()),
                    color: Colors.blue,
                    child: Icon(Icons.remove),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  reverse: true,
                  itemCount: c.history.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      c.history[index],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('AYOOOO'),
                  ),
                ),
              ),
            ),
            ReusableCard(
              onPress: (() {
                c.history.add(
                    'Theme changed to ${Get.isDarkMode ? 'Light' : 'Dark'}');
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              }),
              color: Colors.blue,
              child: Icon(Icons.sunny),
            )
          ],
        ),
      ),
    );
  }
}
