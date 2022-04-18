import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // search area start
                Container(
                  width: SizeConfig.screenWidth * 0.6,
                  decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: 'Axtar',
                        prefixIcon: Icon(
                          Icons.search,
                          color: kSecondaryColor.withOpacity(0.5),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20),
                          vertical: getProportionateScreenWidth(9),
                        )),
                  ),
                ),
                // search area end

                // AppBar cart and notfication icon start
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(12)),
                    width: getProportionateScreenWidth(46),
                    height: getProportionateScreenWidth(46),
                    decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset('assets/icons/Cart Icon.svg'),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(50),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.all(getProportionateScreenWidth(12)),
                        width: getProportionateScreenWidth(46),
                        height: getProportionateScreenWidth(46),
                        decoration: BoxDecoration(
                            color: kSecondaryColor.withOpacity(0.1),
                            shape: BoxShape.circle),
                        child: SvgPicture.asset('assets/icons/Bell.svg'),
                      ),
                      Positioned(
                          top: -3,
                          right: 0,
                          child: Container(
                            width: getProportionateScreenWidth(16),
                            height: getProportionateScreenWidth(16),
                            decoration: BoxDecoration(
                                color: Color(0xFFFF4848),
                                shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                '3',
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(10),
                                    color: Colors.white,
                                    height: 1,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                // AppBar cart and notfication icon end
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),

          // banner area
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(15)),
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(
                color: Color(0xFF4A3290),
                borderRadius: BorderRadius.circular(20)),
            child: Text.rich(TextSpan(
                text: "A Summer Surprise\n",
                style: TextStyle(color: Colors.white),
                children: [
                  TextSpan(
                      text: "CashBack 20%",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold))
                ])),
          ),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          Categories(),
         Padding(
             padding: EdgeInsets.symmetric(
             horizontal: getProportionateScreenWidth(20)),
             child:  Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Special For You', style: TextStyle(fontSize: getProportionateScreenWidth(18), color: Colors.black),),
                 Text('View All', style: TextStyle(color: kPrimaryColor),)
               ],
             ),
         )
        ],
      ),
    ));
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
      {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoriesCard(
                    icon: categories[index]['icon'],
                    text: categories[index]['text'],
                    press: () {},
                  ))
        ],
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
          width: getProportionateScreenWidth(55),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15)),
                  decoration: BoxDecoration(
                      color: Color(0xFFFFECDF),
                      borderRadius: BorderRadius.circular(10)),
                  child: SvgPicture.asset(icon),
                ),
              ),
              SizedBox(height: 5),
              Text(
                text,
                textAlign: TextAlign.center,
              )
            ],
          )),
    );
  }
}
