import 'package:flutter/material.dart';

import 'slider_item.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key, this.height});
  final double? height;

  @override
  Widget build(BuildContext context) {

/*    var items = const [
      SliderItem(),
      SliderItem(),
      SliderItem(),
      SliderItem(),
      SliderItem(),
    ];*/

    return SizedBox(
      height: height ?? MediaQuery.of(context).size.height * 0.28,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        itemCount: 10,//items.length,
        itemBuilder: (context, index) {
          return SliderItem();//items[index];
        },
      ),
    );
  }
}
