
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'counter_controller.dart';
import 'screen.dart';

void main() {
  runApp(GetMaterialApp(home:Home()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {

  SharedPreferences? sharedPreferences;

  Future<void> initShared() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(context) {
    initShared().then((value) {
      var themeData = sharedPreferences?.getBool("theme") ?? false;
      Get.changeTheme(themeData ? ThemeData.light() : ThemeData.dark());
      var data = sharedPreferences?.getInt("counter");

      if (data != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                Screen(count: data, sharedPreferences: sharedPreferences!),
          ),
        );
      }
    });

    final Controller c = Get.put(Controller());

    return Scaffold(
        appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               const Text(
                'You have pushed the button this many times:',
              ),
              Obx(() =>Text(
                c.count.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen(
                            count: c.count.toInt(),
                            sharedPreferences: sharedPreferences!),
                      ),
                    );
                  },
                  child: const Text("Click")),
              ElevatedButton(
                onPressed: () {
                  sharedPreferences?.setBool('theme', Get.isDarkMode);
                  Get.changeTheme(
                      Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                },
                child: const Icon(Icons.sunny),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: c.increment));
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
  

//   @override
//   void initState() {
//     super.initState();
//     initShared().then((value) {
//       var themeData = sharedPreferences?.getBool("theme") ?? false;
//       Get.changeTheme(themeData ? ThemeData.light() : ThemeData.dark());
//       var data = sharedPreferences?.getInt("counter");

//       if (data != null) {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) =>
//                 Screen(count: data, sharedPreferences: sharedPreferences!),
//           ),
//         );
//       }
//     });
//   }

//   Future<void> _incrementCounter() async {
//     setState(() {
//       _counter++;
//     });

//     await sharedPreferences?.setInt('counter', _counter);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => Screen(
//                           count: _counter,
//                           sharedPreferences: sharedPreferences!),
//                     ),
//                   );
//                 },
//                 child: const Text("Click")),
//             ElevatedButton(
//               onPressed: () {
//                 Get.changeTheme(
//                     Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
//                 sharedPreferences?.setBool('theme', Get.isDarkMode);
//               },
//               child: const Icon(Icons.sunny),
//             ),
//             FloatingActionButton(
//               heroTag: '2',
//               onPressed: _incrementCounter,
//               tooltip: 'Increment',
//               child: const Icon(Icons.add),
//             ),
//           ],
//         ),
//       ),
      
//     );
//   }
// }
