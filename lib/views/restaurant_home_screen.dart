import 'package:flutter/material.dart';
import 'package:restaurant_ui/widgets/custom_textfield.dart';
import 'package:restaurant_ui/widgets/food_cart.dart';
import 'package:restaurant_ui/widgets/menu_card.dart';
import 'package:restaurant_ui/widgets/mini_food_card.dart';

class RestaurantHomePage extends StatefulWidget {
  const RestaurantHomePage({super.key});

  @override
  State<RestaurantHomePage> createState() => _RestaurantHomePageState();
}

class _RestaurantHomePageState extends State<RestaurantHomePage> {
  final String bilgi1 = "Çalışma Saatlerimiz : 10:00 - 23:00";
  final String bilgi2 = "Tahmini Teslim Süresi : 45 Dakika";
  final String bilgi3 = "Adres: Cam Piramit, Antalya";
  final String kapat = "Kapat";
  final String menuBaslik1 = "En Çok Tercih Edilenler";
  final String menuBaslik2 = "Ayın Fırsatları       İndirimdekiler";
  final String menuBaslik3 = "Tüm Ürünler";
  final double sizedBoxHeight = 240;
  final double sizedBoxWidth = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        actions: [
          GestureDetector(
            child: Image.asset(
              "images/icon_minirestaurant.png",
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Center(child: Text("Hakkımızda")),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(bilgi1),
                          Text(bilgi2),
                          Text(bilgi3),
                        ],
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(kapat))
                      ],
                    );
                  });
            },
          )
        ],
        title: const CustomTextField(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 12),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    menuBaslik1,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(fontWeight: FontWeight.w500, fontSize: 32),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Card(
                child: SizedBox(
                  height: sizedBoxHeight + 35,
                  child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        FoodCard(
                          imageYolu: "images/icon_minihamburger.png",
                          fiyat: 12,
                          urunAdi: "Köfte Burger",
                        ),
                        BasicPaddingTwo(),
                        FoodCard(
                          imageYolu: "images/icon_pizza.png",
                          fiyat: 13,
                          urunAdi: "Sucuklu Pizza",
                        ),
                        BasicPaddingTwo(),
                        FoodCard(
                          imageYolu: "images/icon_patates.png",
                          fiyat: 4,
                          urunAdi: "Patates Kızartması",
                        ),
                        BasicPaddingTwo(),
                        FoodCard(
                          imageYolu: "images/icon_hamburger.png",
                          fiyat: 14,
                          urunAdi: "Whooper",
                        ),
                        BasicPaddingTwo(),
                        FoodCard(
                          imageYolu: "images/icon_kola.png",
                          fiyat: 2,
                          urunAdi: "Şişe Kola",
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(12),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      menuBaslik2,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(fontWeight: FontWeight.w500, fontSize: 26),
                    ))),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: sizedBoxHeight,
                    width: sizedBoxWidth,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          MiniFoodCard(
                              urunAdi: "Makarna",
                              fiyat: 6,
                              imageYolu: "images/icon_spagetti.png"),
                          BasicPaddingTwo(),
                          MiniFoodCard(
                              urunAdi: "Steak",
                              fiyat: 15,
                              imageYolu: "images/icon_steak.png"),
                          BasicPaddingTwo(),
                          MiniFoodCard(
                              urunAdi: "Hot Dog",
                              fiyat: 7,
                              imageYolu: "images/icon_hotdog.png"),
                          BasicPaddingTwo(),
                          MiniFoodCard(
                              urunAdi: "Noddle",
                              fiyat: 7,
                              imageYolu: "images/icon_nodlee.png"),
                          BasicPaddingTwo(),
                          MiniFoodCard(
                              urunAdi: "Donut",
                              fiyat: 3,
                              imageYolu: "images/icon_donut.png")
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: sizedBoxHeight,
                    width: sizedBoxWidth,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          MiniFoodCard(
                              urunAdi: "Sushi",
                              fiyat: 5,
                              imageYolu: "images/icon_sushi.png"),
                          BasicPaddingTwo(),
                          MiniFoodCard(
                              urunAdi: "Taco",
                              fiyat: 8,
                              imageYolu: "images/icon_taco.png"),
                          BasicPaddingTwo(),
                          MiniFoodCard(
                              urunAdi: "Nacho",
                              fiyat: 6,
                              imageYolu: "images/icon_nacho.png"),
                          BasicPaddingTwo(),
                          MiniFoodCard(
                              urunAdi: "Big Steak",
                              fiyat: 7,
                              imageYolu: "images/icon_steak2.png"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            BigPadding(),
            Text(
              menuBaslik3,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.w500, fontSize: 26),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            MenuCard(
                urunAdi: "Burgerler",
                imageYolu: "images/icon_burgerler.png",
                cardColor: Colors.red[500]),
            BasicPadding(),
            MenuCard(
                urunAdi: "Atıştırmalıklar",
                imageYolu: "images/icon_atistirmaliklar.png",
                cardColor: Colors.red[500]),
            BasicPadding(),
            MenuCard(
                urunAdi: "İçecekler",
                imageYolu: "images/icon_icecekler.png",
                cardColor: Colors.red[500]),
            BasicPadding(),
            MenuCard(
                urunAdi: "Tatlılar",
                imageYolu: "images/icon_tatlilar.png",
                cardColor: Colors.red[500]),
          ],
        ),
      ),
    );
  }

  Padding BigPadding() => const Padding(padding: EdgeInsets.only(top: 20));

  Padding BasicPadding() => const Padding(padding: EdgeInsets.all(12));

  Padding BasicPaddingTwo() => const Padding(padding: EdgeInsets.all(8));

  
}
