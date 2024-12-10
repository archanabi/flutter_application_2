import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/view.dart';
import 'package:get/get.dart';

import '../Controller/count_controller.dart';

class CountController extends StatelessWidget {
final CounterController counterController = Get.put(CounterController());

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('GetX Counter Example'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Obx(() => Text(
            '${counterController.count}',
            // style: Theme.of(context).textTheme.headline4,
          )),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: counterController.increment,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    ),
  );
}
}