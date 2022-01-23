import 'package:flutter/material.dart';
import 'package:travely/shared/theme.dart';
import 'package:travely/ui/widgets/carousel_card.dart';
import 'package:travely/ui/widgets/grid_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget search() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.68,
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: greyColor, width: 1),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                Image.asset(
                  'assets/icon_search.png',
                  width: 26,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: TextField(
                    style: greyTextStyle.copyWith(
                        fontSize: 18, fontWeight: semiBold),
                    decoration: InputDecoration.collapsed(
                        hintText: 'Search..',
                        hintStyle: greyTextStyle.copyWith(
                            fontSize: 18, fontWeight: semiBold)),
                  ),
                ),
                Image.asset(
                  'assets/icon_voice.png',
                  width: 26,
                ),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 54,
            height: 54,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/image_profile.png',
              ),
            ),
          )
        ],
      );
    }

    Widget carousel() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, bottom: 30),
            child: Text(
              "Let's go trip with us ",
              style:
                  blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
            ),
          ),
          const CarouselCard(),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: const [
          //       CarouselCard(),
          //       CarouselCard(),
          //       CarouselCard(),
          //       CarouselCard(),
          //     ],
          //   ),
          // )
        ],
      );
    }

    Widget categories() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, bottom: 20),
            child: Text(
              "Categories",
              style:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: greyColor, width: 1),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icon_beach.png',
                        width: 24,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Beach',
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold),
                      )
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: greyColor, width: 1),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icon_forest.png',
                        width: 24,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Forest',
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold),
                      )
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: greyColor, width: 1),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icon_mountain.png',
                        width: 24,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Mountain',
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      );
    }

    Widget gridView() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, bottom: 20),
            child: Text(
              "For You",
              style:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
          ),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            children: const [
              GridCard(),
              GridCard(),
              GridCard(),
              GridCard(),
            ],
          ),
          const SizedBox(
            height: 7,
          )
        ],
      );
    }

    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              const SizedBox(
                height: 40,
              ),
              search(),
              const SizedBox(
                height: 40,
              ),
              carousel(),
              const SizedBox(
                height: 30,
              ),
              categories(),
              const SizedBox(
                height: 30,
              ),
              gridView()
            ],
          ),
        ));
  }
}
