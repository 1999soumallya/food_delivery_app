import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expandable_text_widget.dart';

class RecommenedFoodDetail extends StatelessWidget {
  const RecommenedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.clear,
                ),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
                child: Center(
                  child: BigText(
                    text: "Chinese Side",
                    size: Dimensions.font26,
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    child: ExpandableTextWidget(
                        text:
                            "Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them.Movie soundtracks are very close to the listeners and when it comes to Bollywood, there are a lot of movies filled with amazing songs. A lot of listeners in India as well as in other countries are in search of these soundtracks to download. Considering the need of the listeners, a list of the top 10 Music Download Websites are given below where listeners can find and download all kinds of Bollywood tracks whether it is new or classic. Most of these websites are free and downloading options are free as well. However, some of them also come with paid subscription packages. Let’s take a better look at them."),
                    margin: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20)),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "\$12.88 X 0",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add)
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20 * 2),
                    topRight: Radius.circular(Dimensions.radius20 * 2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white),
                  child: const Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                    size: Dimensions.font20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
