import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/icon_and_text_widget.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  int _itemcount = 5;
  double _height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  // ignore: must_call_super
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: Colors.redAccent,
          height: 320,
          child: PageView.builder(
              controller: pageController,
              itemCount: _itemcount,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        DotsIndicator(
          dotsCount: _itemcount,
          position: _currentPageValue,
          decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
          ),
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();

    if (index == _currentPageValue.floor()) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currentScale = _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currTrans, 0);

    } else if (index == _currentPageValue.floor() - 1) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else{
      var currScale = 0.8;
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }

    return Transform(
        transform: matrix,
        child: Stack(
          children: [
            Container(
                height: 220,
                margin: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: index.isEven ? const Color(0xFF69c5df) : const Color(0xFF9294cc),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/food0.png")
                    )
                )
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 120,
                  margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xFFe8e8e8),
                            blurRadius: 5.0,
                            offset: Offset(0,5)
                        ),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-5, 0)
                        ),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(5, 0)
                        )
                      ]
                  ),
                  child: Container(
                    padding:
                    const EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(text: "Chinese Side"),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Wrap(
                                  children: List.generate(5, (index) => const Icon(Icons.star,
                                      color: AppColors.mainColor, size: 15))
                              ),
                              const SizedBox(width: 10),
                              SmallText(text: "4.5"),
                              const SizedBox(width: 10),
                              SmallText(text: "1287"),
                              const SizedBox(width: 10),
                              SmallText(text: "comments")
                            ],
                          ),
                          const SizedBox(height: 20, width: 20),
                          Row(
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
                        ]
                    ),
                  ),
                )
            )
          ],
        ));
  }
}