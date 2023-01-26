import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text,size: 26,),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                      (index) => Icon(
                    Icons.star,
                    color: Color(0xFF89dad0),
                    size: 15,
                  )),
            ),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "134"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "comments")
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: const [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "normal",
                iconColor: Color(0xFFffd28d)),
            SizedBox(
              width: 7,
            ),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: "5.7km",
                iconColor: Color(0xFF89dad0)),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: "45min",
                iconColor: Color(0xFFfcab88))
          ],
        )
      ],
    );
  }
}
