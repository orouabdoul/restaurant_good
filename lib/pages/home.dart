import 'package:flutter/material.dart';
import 'package:restaurant/pages/details.dart';
import 'package:restaurant/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(
                left: screenWidth * 0.03, top: screenHeight * 0.01),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello Silvan',
                      style: AppWidget.boldTextFeildStyle(),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: screenWidth * 0.03),
                      padding: EdgeInsets.all(screenWidth * 0.01),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.45),
                  child: Text(
                    'Delicious Food',
                    style: AppWidget.headLineTextFeildStyle(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.33),
                  child: Text(
                    'Discover and Get Great food',
                    style: AppWidget.lightTextFeildStyle(),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Container(
                    margin: EdgeInsets.only(right: screenWidth * 0.03),
                    child: showItem()),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildFoodCard(
                        'assets/images/salad2.png',
                        'Veggle Toce Hosh',
                        'Fresh and Healthy',
                        '\$ 25.00',
                        screenWidth,
                      ),
                      SizedBox(
                        width: screenWidth * 0.03,
                      ),
                      buildFoodCard(
                        'assets/images/salad3.png',
                        'Mixed Veg Salad',
                        'Spicy with Onion',
                        '\$ 28.00',
                        screenWidth,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Container(
                  margin: EdgeInsets.only(right: screenWidth * 0.03),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/salad2.png',
                                width: screenWidth * 0.3,
                                height: screenHeight * 0.15,
                                fit: BoxFit.cover),
                            SizedBox(
                              width: screenWidth * 0.05,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(0),
                                  width: screenWidth * 0.5,
                                  child: Text('Mediterranean Chickpea Salad',
                                      style:
                                          AppWidget.semiBoldTextFeildStyle()),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.01,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(0),
                                  width: screenWidth * 0.5,
                                  child: Text('Honey goat cheese',
                                      style: AppWidget.lightTextFeildStyle()),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.01,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(0),
                                  width: screenWidth * 0.5,
                                  child: Text('\$ 30.00',
                                      style:
                                          AppWidget.semiBoldTextFeildStyle()),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFoodCard(String imagePath, String title, String subtitle,
      String price, double screenWidth) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const Details();
        }));
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.all(14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  imagePath,
                  width: screenWidth * 0.4,
                  height: screenWidth * 0.4,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.03),
                  child: Text(title, style: AppWidget.semiBoldTextFeildStyle()),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.03),
                  child: Text(subtitle, style: AppWidget.lightTextFeildStyle()),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.03),
                  child: Text(price, style: AppWidget.semiBoldTextFeildStyle()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildCategoryItem('assets/images/ice-cream.png', icecream, () {
          setState(() {
            icecream = true;
            pizza = false;
            salad = false;
            burger = false;
          });
        }),
        buildCategoryItem('assets/images/pizza.png', pizza, () {
          setState(() {
            icecream = false;
            pizza = true;
            salad = false;
            burger = false;
          });
        }),
        buildCategoryItem('assets/images/salad.png', salad, () {
          setState(() {
            icecream = false;
            pizza = false;
            salad = true;
            burger = false;
          });
        }),
        buildCategoryItem('assets/images/burger.png', burger, () {
          setState(() {
            icecream = false;
            pizza = false;
            salad = false;
            burger = true;
          });
        }),
      ],
    );
  }

  Widget buildCategoryItem(
      String imagePath, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(5),
          child: Image.asset(
            imagePath,
            width: 40,
            height: 40,
            fit: BoxFit.cover,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
