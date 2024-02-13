import 'package:e_com_task_two/util/product_data.dart';
import 'package:flutter/material.dart';

class ProductFilter extends StatefulWidget {
  const ProductFilter({super.key});

  @override
  State<ProductFilter> createState() => _ProductFilterState();
}

double filteredAmt = 1000;

class _ProductFilterState extends State<ProductFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text(
          'Product Filter',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        actions: const [
          Icon(
            Icons.apps,
            color: Colors.white,
            size: 30,
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Slider(
              min: 0,
              max: 1000,
              divisions: 1000,
              activeColor: Colors.blueAccent,
              value: filteredAmt,
              onChanged: (value) {
                filteredAmt = value;
                setState(() {

                });
              },
            ),

            Text(
              'All Product < \$${filteredAmt.toStringAsFixed(0)} months',
              style:
              const TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),

            Expanded(
              child: ListView(
                children: [
                  ...List.generate(productData1.length, (index) => (productData1[index]['price'] < filteredAmt) ? productBox(index) : Container())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget productBox(int index) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 2,
                offset: const Offset(0, 4)
            )
          ]
      ),
      child: ListTile(
        title: Text(productData1[index]['name'], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
      subtitle: Text(productData1[index]['brand'], style: TextStyle(fontSize: 14),),
    leading: Text('${productData1[index]['id']}', style: TextStyle(fontSize: 14),),
    trailing: Text('\$${productData1[index]['price']}', style: TextStyle(fontSize: 14),),
    ),
    );
  }
}
