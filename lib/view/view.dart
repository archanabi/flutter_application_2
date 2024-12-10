import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CounterController extends GetxController {
  // Define an observable variable
  var count = 0.obs;

  // Method to increment the counter
  void increment() {
    count++;
  }
}