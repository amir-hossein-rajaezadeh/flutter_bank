import 'package:flutter/material.dart';
import 'package:flutter_bank/model/models.dart';
import 'package:flutter_bank/utils/my_colors.dart';
import '../widgets/card/card_content.dart';
import '../widgets/card/cool_swiper.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    print("device width is $deviceWidth");
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.only(top: 200),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 200,
                width: deviceWidth < 398 ? 345 : 400,
                alignment: Alignment.topCenter,
                child: CoolSwiper(
                  initAnimationOffset: 20,
                  children: List.generate(
                    getCardList().length,
                    (index) => CardContent(
                      cardItem: getCardList()[index],
                      deviceWidth: deviceWidth,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 45, left: 20, bottom: 4),
            alignment: Alignment.topLeft,
            child: const Text(
              "Manage Card",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.only(top: 0),
                itemBuilder: (context, index) {
                  final item = getCardOptionList()[index];
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border:
                            Border.all(color: MyColors.grey.withOpacity(0.4)),
                      ),
                      child: IconButton(
                        icon: Icon(
                          item.icon,
                          color: MyColors.darkPurple,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    title: Text(
                      item.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 16,
                    ),
                  );
                },
                separatorBuilder: (context, index) => Container(
                      height: 8,
                    ),
                itemCount: getCardOptionList().length),
          )
        ],
      ),
    );
  }
}
