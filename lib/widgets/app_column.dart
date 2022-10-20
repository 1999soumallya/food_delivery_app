import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/icon_and_text_widget.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  double size;
  AppColumn({Key? key, required this.text, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BigText(text: text, size: size),
      SizedBox(height: Dimensions.height10),
      Row(
        children: [
          Wrap(
              children: List.generate(
                  5,
                  (index) => const Icon(Icons.star,
                      color: AppColors.mainColor, size: 15))),
          const SizedBox(width: 10),
          SmallText(text: "4.5"),
          const SizedBox(width: 10),
          SmallText(text: "1287"),
          const SizedBox(width: 10),
          SmallText(text: "comments")
        ],
      ),
      SizedBox(height: Dimensions.height20, width: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: AppColors.iconColor1),
          SizedBox(
            width: 10,
          ),
          IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7km",
              iconColor: AppColors.mainColor),
          SizedBox(
            width: 10,
          ),
          IconAndTextWidget(
              icon: Icons.access_time_filled_rounded,
              text: "32min",
              iconColor: AppColors.iconColor2)
        ],
      )
    ]);
  }
}
