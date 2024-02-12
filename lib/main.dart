import 'package:e_com_task_two/8.2/stack_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    initialRoute: '/stack',

    routes: {
    '/stack': (context) => const StackApp(),
    },

  ));
}
