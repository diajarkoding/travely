import 'package:flutter/material.dart';
import 'package:travely/shared/theme.dart';

class GridCard extends StatelessWidget {
  const GridCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.423,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
            image: AssetImage(
              'assets/image1.png',
            ),
            fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/button_active_bookmark.png',
                      width: 18,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kelingking Beach',
                  style: whiteTextStyle.copyWith(fontWeight: semiBold),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_location.png',
                      width: 10,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Bali, Indonesia',
                      style: whiteLightTextStyle.copyWith(
                          fontSize: 11, fontWeight: semiBold),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
