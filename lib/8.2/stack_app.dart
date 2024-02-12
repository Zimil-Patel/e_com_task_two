import 'package:flutter/material.dart';

late double height;
late double width;

List boxData = [
  {'text': 'Purple', 'color': Colors.purple, 'leftMargin': 20.0, 'topMargin': 20.0},
  {'text': 'Indigo', 'color': Colors.indigo, 'leftMargin': 55.0, 'topMargin': 55.0},
  {'text': 'LightBlue', 'color': Colors.lightBlue, 'leftMargin': 90.0, 'topMargin': 90.0},
  {'text': 'Green', 'color': Colors.green, 'leftMargin': 125.0, 'topMargin': 125.0},
  {'text': 'Amber', 'color': Colors.amber, 'leftMargin': 160.0, 'topMargin': 160.0},
  {'text': 'Orange', 'color': Colors.orange, 'leftMargin': 195.0, 'topMargin': 195.0},
  {'text': 'RedAccent', 'color': Colors.redAccent, 'leftMargin': 230.0, 'topMargin': 230.0},
];

class StackApp extends StatelessWidget {
  const StackApp({super.key});

  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(

      //APP BAR
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Stack App', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),),
      ),

      //BODY OF APP
      body: addStackContainer(),
    );
  }

  //STACK CONTAINER
  Widget addStackContainer() {

    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Stack(
        children: List.generate(boxData.length, (index) => addBox(text: boxData[index]['text'], color: boxData[index]['color'], left: boxData[index]['leftMargin'] as double, top: boxData[index]['topMargin'] as double))
      ),
    );

  }

  //BOX DESIGN
  Widget addBox({required String text, required Color color, required double left, required double top}) {

    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.only(left: left, top: top),
        height: height / 5.8,
        width: width / 2.8,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(25),
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withOpacity(0.3),
              blurRadius: 8,
              //offset: const Offset(4, 4)
            ),
          ]
        ),
        child: Text(text, style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
