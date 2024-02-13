import 'package:e_com_task_two/8.1/product_filter.dart';
import 'package:e_com_task_two/8.2/stack_app.dart';
import 'package:e_com_task_two/EMI_Calculator/emi_calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    initialRoute: '/product',

    routes: {
    '/stack': (context) => const StackApp(),
    '/emi': (context) => const EmiCalculator(),
    '/product': (context) => const ProductFilter(),
    },

  ));
}
