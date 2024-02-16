import 'package:e_com_task_two/8.1/product_filter.dart';
import 'package:e_com_task_two/8.2/stack_app.dart';
import 'package:e_com_task_two/EMI_Calculator/emi_calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    initialRoute: '/emi',

    routes: {
    '/stack': (context) => const StackApp(),
    '/emi': (context) => const EmiCalculator(),
    '/product': (context) => const ProductFilter(),
    '/sample': (context) => const Sample(),
    },

  ));
}


class Sample extends StatelessWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Column(
            children: [
              ...List.generate(40, (index) => Container(
                width: double.infinity,
                  color: Colors.redAccent,
                  child: Text('$index')))
            ],
        )],
      ),
    );
  }
}

