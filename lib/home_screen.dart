import 'package:animate_do/animate_do.dart';
import 'package:christmas_gift_app_ui/custom_bottom_menu.dart';
import 'package:christmas_gift_app_ui/custom_listview.dart';
import 'package:christmas_gift_app_ui/gift_category.dart';
import 'package:christmas_gift_app_ui/gift_category_item.dart';
import 'package:christmas_gift_app_ui/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rive/rive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final categories = GiftCategory.giftCategoryList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Utils.getColorFromHex("#fe0000"),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Icon(
              Icons.menu_sharp,
              color: Colors.white,
            ),
            const SizedBox(
              width: 20,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Merry Christmas",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "Darlius R.Bailey",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
            const SizedBox(
              width: 130,
            ),
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/image4.png"),
                ),
              ),
            )
          ],
        ),
      ),
      // backgroundColor: Utils.getColorFromHex("#fe0000"),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  color: Utils.getColorFromHex("#fe0000"),
                  child: const RiveAnimation.asset(
                    "assets/animations/snow.riv",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.75,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: Transform.translate(
                      offset: const Offset(0, -50),
                      child: Column(
                        children: [
                          FadeInDown(
                            duration: Duration(milliseconds: 2000),
                            child: Card(
                            elevation: 12,
                            color: Colors.white,
                            child: Container(
                              width: 350,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "DISCOVER",
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "PERFECT GIFTS",
                                          style: TextStyle(
                                              color: Colors.red[500],
                                              fontSize: 22),
                                        ),
                                        const Text(
                                          "Share Happiness!",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, "/home");
                                          },
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                        Color>(
                                                    Utils.getColorFromHex(
                                                        "#fe0000")),
                                            padding: MaterialStateProperty.all<
                                                EdgeInsetsGeometry>(
                                              const EdgeInsets.symmetric(
                                                  horizontal: 20),
                                            ),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                              ),
                                            ),
                                          ),
                                          child: const Text(
                                            "Explore",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Image.asset(
                                      "assets/images/image2.png",
                                      width: 120,
                                      height: 120,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          // GridView.builder(
                          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          //   crossAxisCount: 2, // Nombre de colonnes dans la grille
                          //   crossAxisSpacing: 2.0, // Espacement horizontal entre les colonnes
                          //   mainAxisSpacing: 2.0, // Espacement vertical entre les lignes
                          //   ),
                          //   itemCount: categories.length,
                          //   shrinkWrap: true,
                          //   itemBuilder: (context, index) {
                          //     return GiftCategoryItem(
                          //         categoryName: categories[index].name,
                          //         imagePath: categories[index].imagePath,
                          //       );
                          //     }
                          // ),
                          // ListView.builder(
                          //   scrollDirection: Axis.vertical,
                          //   itemCount: (categories.length / 2)
                          //       .ceil(), // Utiliser la moitié du nombre total d'éléments pour déterminer le nombre de lignes nécessaires
                          //   shrinkWrap: true,
                          //   itemBuilder: (context, index) {
                          //     final int firstIndex = index * 2;
                          //     final int secondIndex = firstIndex + 1;

                          //     return Row(
                          //       children: [
                          //         Expanded(
                          //           child: firstIndex < categories.length
                          //               ? GiftCategoryItem(
                          //                   categoryName:
                          //                       categories[firstIndex].name,
                          //                   imagePath:
                          //                       categories[firstIndex].imagePath,
                          //                 )
                          //               : Container(), // Utiliser un conteneur vide si l'index est hors limite
                          //         ),
                          //         const SizedBox(
                          //             width: 10), // Espacement entre les colonnes
                          //         Expanded(
                          //           child: secondIndex < categories.length
                          //               ? GiftCategoryItem(
                          //                   categoryName:
                          //                       categories[secondIndex].name,
                          //                   imagePath:
                          //                       categories[secondIndex].imagePath,
                          //                 )
                          //               : Container(), // Utiliser un conteneur vide si l'index est hors limite
                          //         ),
                          //       ],
                          //     );
                          //   },
                          // )
                          CustomListView(
                            items: categories,
                            itemBuilder: (context, index, category) {
                              return FadeIn(
                                delay: const Duration(milliseconds: 3000),
                                child: GiftCategoryItem(
                                categoryName: category.name,
                                imagePath: category.imagePath,
                              )
                              );
                            },
                            columnSpacing:
                                10.0, // Espacement entre les colonnes
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Gift Recommendations",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "See All",
                                  style: TextStyle(
                                      color: Utils.getColorFromHex("#fe0000")),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            
                            child: Expanded(
                              child: MasonryGridView.builder(
                                gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                ),
                                itemCount: 4,
                                
                                itemBuilder: (context, index) {
                                  return Card(
                                    color: Colors.indigoAccent[100],
                                    shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                                  child: Container(
                                    width: 200,
                                    height: index.isEven ? 200 : 140,
                                  ),
                                                                  );
                                }
                            )
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GNav(
          backgroundColor: Colors.white,
          color: Colors.grey[600],
          activeColor: Colors.red[400],
          tabBackgroundColor: Colors.grey[300]!,
          tabBorderRadius: 12,
          tabMargin: const EdgeInsets.all(10),
          curve: Curves.decelerate,
          gap: 4,
          padding: const EdgeInsets.all(10),
          // selectedIndex: _bottomNavIndex,
          onTabChange: (index) {
            // setState(() {
            //   _bottomNavIndex = index;
            // });
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: '',
            ),
            GButton(
              icon: Icons.calendar_month,
              text: '',
            ),
            GButton(
              icon: Icons.search,
              text: '',
            ),
            GButton(
              icon: Icons.person,
              text: '',
            )
          ]),
    );
  }
}
