import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: AspectRatio(
                aspectRatio: 70 / 105,
                child: Container(
                  // height: 105,
                  // width: 70,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    //fit: BoxFit.fill,
                    image: AssetImage(AssetsData.book),
                  )),
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            const Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'The Jungle Book',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Rudyard Kipling',
                    style: TextStyle(fontSize: 14, color: Color(0xff707070)),
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99 €',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffFFDD4F),
                            size: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.0, right: 10),
                            child: Text('4.8',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                          ),
                          Text('(2390)',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff707070))),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
